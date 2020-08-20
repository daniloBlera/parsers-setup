# Setting up the Stanford Biaffine v2 Parser
## Documentation
*   [https://github.com/datquocnguyen/BioPosDep](https://github.com/datquocnguyen/BioPosDep)

## Requirements:
*   Java 8 or above;
*   Python 2.7;
*   Virtualenv;
*   `lzma` shared library.

The installation of `lzma`'s shared library varies between distributions, [this link][lzma-doc] might have the correct instructions for your setup.

## Installation
Clone the repository from github

```zsh
git clone https://github.com/datquocnguyen/BioPosDep.git
```

Download the [pre-trained model][pretrained] then extract and move both `models` and `PubMed-shuffle-win2-500Kwords.txt` into the `BioPosDep/StanfordBiaffineParser-v2`

`cd` into the parser's root dir

```zsh
cd 'BioPosDep/StanfordBiaffineParser-v2'
```

Activate a python 2.7 virtual environment and install the required modules, note that the installation of `backports.lzma` will fail if your distribution's missing `lzma`'s shared library.

```zsh
pip install --upgrade pip setuptools wheel
pip install tensorflow==1.0 numpy==1.11.0 scipy==1.0.0 matplotlib==2.1.2 pip install backports.lzma
```

## Test the installation
Run the included `biaffine-test.sh` script.

[pretrained]:   https://drive.google.com/file/d/18IYSJEV0uwbg468lFXejS0Wyw2_8Pjfa/view?usp=sharing
[lzma-doc]:     https://pypi.org/project/backports.lzma/
