#!/bin/sh
# These are the steps from the repository's README
cd ./BioPosDep/NLP4J || exit
bin/nlpdecode -c config-GENIA.xml -i ../data/raw.txt -format raw -oe genia
bin/nlpdecode -c config-CRAFT.xml -i ../data/raw.txt -format raw -oe craft

cd .. || exit
python convert_NLP4J_to_CoNLL.py data/raw.txt.genia
python convert_NLP4J_to_CoNLL.py data/raw.txt.craft

cd StanfordBiaffineParser-v2 || exit
python main.py --save_dir models/GENIA parse ../data/raw.txt.genia.conll
python main.py --save_dir models/CRAFT parse ../data/raw.txt.craft.conll
