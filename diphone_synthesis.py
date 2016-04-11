from decision_tree import print_tree, classify_tree, build_tree
from decision_tree import dump_tree_to_json, load_tree_from_json
import numpy as np
import tarfile
from scipy.io import wavfile
import os
import sys

with open("cmudict.0.7a_SPHINX_40.align", mode="r") as f:
    lines = f.readlines()

lines = [l.strip().split(" ") for l in lines]
lines = [l for l in lines if len(l) > 2]
text = [l[0] for l in lines]
phones = [l[2:] for l in lines]

CHAR_WIN = 5
PAD_CHAR = "-"
PAD_PHONE = "SIL"


with open("cmu_phones.list", mode="r") as f:
    lines = f.readlines()
phoneset_cmu = [l.strip() for l in lines]
# reduce to common set
phoneset_cmu = [p for p in phoneset_cmu if p != "AXR"]
phoneset_cmu = [p for p in phoneset_cmu if p != "DX"]
phoneset_cmu = [p for p in phoneset_cmu if p != "IX"]
phoneset_cmu = sorted(phoneset_cmu[:-1]) + [phoneset_cmu[-1]]

with open("festival_phones.list", mode="r") as f:
    lines = f.readlines()
phoneset_radio = [l.strip() for l in lines]
# reduce to common set
phoneset_radio = [p for p in phoneset_radio if p != "el"]
phoneset_radio = [p for p in phoneset_radio if p != "em"]
phoneset_radio = [p for p in phoneset_radio if p != "en"]
phoneset_radio = sorted(phoneset_radio[:-1]) + [phoneset_radio[-1]]

with open("kaldiph.est", mode="r") as f:
    lines = f.readlines()
# Skip header
kal_diph = [l.strip() for n, l in enumerate(lines) if n >= 4]
kal_diph = [k.split(" ") for k in kal_diph]

# A bunch of preproc useful for synthesis
assert len(phoneset_cmu) == len(phoneset_radio)
cmu2radio = {k: v for k, v in zip(phoneset_cmu, phoneset_radio)}
radio2cmu = {v: k for k, v in cmu2radio.items()}
all_diph = [k[0] for k in kal_diph]

all_fake_j = [[n, k] for n, k in enumerate(all_diph) if "_" in k]
all_fake_idx = [j[0] for j in all_fake_j]
all_fake = [k[1] for k in all_fake_j]
all_fake = [a.replace("_", "").split("-") for a in all_fake]
all_fake = [[a[0]] + ["_"] + [a[1]] for a in all_fake]

all_real_j = [[n, k] for n, k in enumerate(all_diph) if "_" not in k]
all_real_idx = [j[0] for j in all_real_j]
all_real = [k[1] for k in all_real_j]
all_real = [a.split("-") for a in all_real]


def make_features(text, phones, char_win=CHAR_WIN):
    """
    Make feature which is
    prev_phoneme (start with SIL)
    window of char_win characters, appending "-" to front and back
    """
    pad = (char_win - 1) // 2
    pad_str = "".join([PAD_CHAR] * pad)
    pad_phone = PAD_PHONE
    ext_text = pad_str + text + pad_str
    ext_phone = [pad_phone] + phones
    slice_text = [ext_text[i:i + char_win] for i in range(len(text))]
    feats = [[ext_phone[i]] + list(slice_text[i]) + [ext_phone[i + 1]]
             for i in range(len(slice_text))]
    return feats


def recursive_classify_tree(text, tree, char_win=CHAR_WIN):
    pad = (char_win - 1) // 2
    pad_str = "".join([PAD_CHAR] * pad)
    pad_phone = PAD_PHONE
    ext_text = pad_str + text + pad_str
    slice_text = [ext_text[i:i + char_win] for i in range(len(text))]
    prev_phone = pad_phone
    pred_phones = []
    for i in range(len(slice_text)):
        feats = [prev_phone] + list(slice_text[i])
        results = classify_tree(feats, tree)
        # TODO/OPTIMIZATION:
        # Look for phones which match the letter first
        max_key = None
        max_value = -1
        # Could sample based on prob instead
        for k, v in results.items():
            if v > max_value:
                max_key = k
                max_value = v
        pred_phone = max_key
        pred_phones.append(pred_phone)
        prev_phone = pred_phone
    return pred_phones


def synthesize(phones):
    diphone_results = []
    n = 0
    max_n = len(phones) - 1
    # Find phone pair and see if it matches database
    while True:
        if n == max_n:
            break
        p1 = phones[n]
        p2 = phones[n + 1]
        if p1 == "_" or p2 == "_":
            # make fake diphone and check if we have it
            if p1 != "_":
                p1 = cmu2radio[p1]
            if p2 != "_":
                p2 = cmu2radio[p2]
            p3 = phones[n + 2]
            p3 = cmu2radio[p3]
            # Only 1 should match if any
            r = [(n, m) for n, m in enumerate(all_fake)
                 if m == [p1, p2, p3]]
            if len(r) < 1:
                # No fake for this pair - skip blank and do real
                r = [(n, m) for n, m in enumerate(all_real) if m == [p1, p3]]
                if len(r) < 1:
                    # This shouldn't happen
                    print("No match found?")
                    raise ValueError()
                r = r[0]
                idx = r[0]
                match = r[1]
                diph_idx = all_real_idx[idx]
            else:
                # fake diphone exists, find lookup
                r = r[0]
                idx = r[0]
                match = r[1]
                diph_idx = all_fake_idx[idx]
            n += 2
        else:
            # make real diphone and look it up
            p1 = cmu2radio[p1]
            p2 = cmu2radio[p2]
            r = [(n, m) for n, m in enumerate(all_real) if m == [p1, p2]]
            if len(r) < 1:
                # This shouldn't happen
                print("No match found?")
                raise ValueError()
            else:
                # lookup real diphone
                r = r[0]
                idx = r[0]
                match = r[1]
                diph_idx = all_real_idx[idx]
            n += 1
        diphone_results.append(kal_diph[diph_idx])
    fs, wav = stitch_diphones(diphone_results)
    return fs, wav


def stitch_diphones(diphones_info):
    # first iterate to get overall time
    # all times in milliseconds
    tar = tarfile.open("wav.tar.gz")
    sample_total = 0
    mids = []
    wavs = []
    fs = -1
    for diphone in diphones_info:
        filename, time_start, time_mid, time_end = diphone[1:]
        time_start = float(time_start)
        time_mid = float(time_mid)
        time_end = float(time_end)

        filename = filename + ".wav"
        which = diphone[0]
        to_fetch = "wav/" + filename
        wf = tar.extractfile(to_fetch)
        fs, d = wavfile.read(wf)

        sample_start = int(time_start * fs)
        sample_end = int(time_end * fs)
        sample_mid = int(time_mid * fs)
        sample_total += sample_end - sample_start
        mids.append(sample_mid - sample_start)
        wavs.append(d[sample_start:sample_end])

    # Dumb, fast overlap add
    result = np.zeros((sample_total), dtype="float32")
    idx = 0
    for n, (wav, mid) in enumerate(zip(wavs, mids)):
        istart = idx
        imid = idx + mid
        iend = idx + len(wav)
        win = np.hanning(len(wav))
        windowed = win * wav
        if n == 0:
            # Don't window very first
            windowed[:mid] = wav[:mid]
        elif n == (len(mids) - 1):
            # Don't window very last
            windowed[mid:] = wav[mid:]
        result[istart:iend] += windowed / float(2 ** 15.)
        idx = imid
    result = result[:iend + 8000]
    return fs, result


def soundsc(X, copy=True):
    """
    Approximate implementation of soundsc from MATLAB without the audio playing.

    Parameters
    ----------
    X : ndarray
        Signal to be rescaled

    copy : bool, optional (default=True)
        Whether to make a copy of input signal or operate in place.

    Returns
    -------
    X_sc : ndarray
        (-1, 1) scaled version of X as float32, suitable for writing
        with scipy.io.wavfile
    """
    X = np.array(X, copy=copy)
    X = (X - X.min()) / (X.max() - X.min())
    X = .9 * X
    X = 2 * X - 1
    return X.astype('float32')


if __name__ == "__main__":
    saved_filename = "saved_decision_tree.json"
    if not os.path.exists(saved_filename):
        # If we don't have a saved tree, save it
        all_feats = []
        for i in range(len(text)):
            feat = make_features(text[i], phones[i])
            all_feats.extend(feat)
        idx = list(range(len(all_feats)))

        random_state = np.random.RandomState(1999)
        random_state.shuffle(idx)
        # Out of 900k samples... but scaling is poor
        num_samples = 10000
        idx = idx[:num_samples]
        all_feats = [all_feats[i] for i in idx]
        # Let max leaves be > number of phones (44)
        tree = build_tree(all_feats, max_depth=50)
        dump_tree_to_json(tree, saved_filename)

    tree = load_tree_from_json(saved_filename)

    if len(sys.argv) > 1:
        pred_text = str(sys.argv[1]).upper()
    else:
        pred_text = "HEISENBERG"
    pred_phones = recursive_classify_tree(pred_text, tree)
    print("Text:", pred_text)
    print("Predicted phones:", pred_phones)

    fs, wav = synthesize(pred_phones)
    wavfile.write("out.wav", fs, soundsc(wav))
