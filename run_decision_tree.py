from decision_tree import print_tree, classify_tree, build_tree
import numpy as np

with open("cmudict.0.7a_SPHINX_40.align", mode="r") as f:
    lines = f.readlines()
lines = [l.strip().split(" ") for l in lines]
lines = [l for l in lines if len(l) > 2]
text = [l[0] for l in lines]
phones = [l[2:] for l in lines]

CHAR_WIN = 5
PAD_CHAR = "-"
PAD_PHONE = "SIL"


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
        pred_phone = list(classify_tree(feats, tree).keys())[0]
        pred_phones.append(pred_phone)
        prev_phone = pred_phone
    return pred_phones


all_feats = []
for i in range(len(text)):
    feat = make_features(text[i], phones[i])
    all_feats.extend(feat)
idx = list(range(len(all_feats)))

random_state = np.random.RandomState(1999)
random_state.shuffle(idx)
num_samples = 1000
idx = idx[:num_samples]
all_feats = [all_feats[i] for i in idx]
tree = build_tree(all_feats)

pred_text = "HELLO"
pred_phones = recursive_classify_tree(pred_text, tree)
print(pred_text)
print(pred_phones)
