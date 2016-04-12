# diphone_synthesizer
A tutorial diphone synthesizer in Python

Usage example:
python diphone_synthesis.py <word>

e.g.

python diphone_synthesis.py instagram

python diphone_synthesis.py bootylicious

Some synthesis examples online, titled Diphone * https://soundcloud.com/kyle-kastner-455364526

cmu_phones.list taken from http://www.speech.cs.cmu.edu/sphinx/doc/sphinx-FAQ.html

festival_phones.list taken from http://festvox.org/festvox-1.2/festvox_18.html

Note these *basically* match, modulo that silence phone which I added manually.

Sphinx dictionary gotten from here http://svn.code.sf.net/p/cmusphinx/code/trunk/cmudict/sphinxdict/
and processed with t2p/t2p_align.pl cmudict.0.7a_SPHINX_40 > cmudict.0.7a_SPHINX_40.align

Core wav files in wav.tar.gz gotten from http://festvox.org/databases/cmu_us_kal_diphone/packed/cmu_us_kal_diphone_base.tar.bz2

kaldiph.est also taken from cmu_us_kal_diphone_base.tar.bz2

Alignment methodology is described in the following papers:

"Letter to Sound Rules For Accented Lexicon Compression", Pagel, Lenzo, Black

http://arxiv.org/pdf/cmp-lg/9808010v1.pdf

"Issues in Building General Letter to Sound Rules", Black, Lenzo, Pagel
https://www.cs.cmu.edu/~awb/papers/ESCA98_lts.pdf

To train a larger tree, delete the saved json and change num_samples
in diphone_synthesis
