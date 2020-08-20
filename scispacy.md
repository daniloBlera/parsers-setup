# SciSpaCy Setup
These are the steps to install the `scispacy` and `spacy-conll` modules.

## Documentation
*   [https://allenai.github.io/scispacy/](https://allenai.github.io/scispacy/)
*   [https://pypi.org/project/spacy-conll/](https://pypi.org/project/spacy-conll/)

## Requirements
*   python 3;
*   virtualenv.

## Installation
Create the directory for the parser and `cd` into it

```zsh
mkdir scispacy
cd scispacy
```

Startup the parser's python 3 virtual environment and install the required modules

```zsh
pip install --upgrade pip setuptools wheel scispacy spacy-conll
```

Install at least one of the the small, medium and large biomedical models below

```zsh
pip install 'https://s3-us-west-2.amazonaws.com/ai2-s2-scispacy/releases/v0.2.5/en_core_sci_sm-0.2.5.tar.gz'
# pip install 'https://s3-us-west-2.amazonaws.com/ai2-s2-scispacy/releases/v0.2.5/en_core_sci_md-0.2.5.tar.gz'
# pip install 'https://s3-us-west-2.amazonaws.com/ai2-s2-scispacy/releases/v0.2.5/en_core_sci_lg-0.2.5.tar.gz'
```
