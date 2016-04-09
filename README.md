# diphone_synthesizer
A tutorial diphone synthesizer in Python

cmu_phones.list taken from http://www.speech.cs.cmu.edu/sphinx/doc/sphinx-FAQ.html
festival_phones.list taken from http://festvox.org/festvox-1.2/festvox_18.html

Note these *basically* match, modulo that silence phone which I added manually.

Sphinx dictionary gotten from here http://svn.code.sf.net/p/cmusphinx/code/trunk/cmudict/sphinxdict/
and processed with t2p/t2p_align.pl cmudict.0.7a_SPHINX_40 > cmudict.0.7a_SPHINX_40.align

Core wav files gotten from http://festvox.org/databases/cmu_us_kal_diphone/packed/cmu_us_kal_diphone_base.tar.bz2
