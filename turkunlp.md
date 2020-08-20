# TurkuNLP Setup
## Documentation
*   [http://turkunlp.org/Turku-neural-parser-pipeline/install.html](http://turkunlp.org/Turku-neural-parser-pipeline/install.html)

## Requirements
*   python 3.6;
*   virtualenv;
*   python 3 headers;
*   TKinter;
*   build-essential (in the case of Ubuntu).

On Ubuntu, the required packages can be installed with

```zsh
sudo apt install build-essential python3-dev python3-virtualenv python3-tk
```

## Installation
Clone the repository

```zsh
git clone https://github.com/TurkuNLP/Turku-neural-parser-pipeline.git
```

`cd` into the parser's repository and download its submodules

```zsh
cd Turku-neural-parser-pipeline || exit
git submodule update --init --recursive
```

Start the python 3.6 virtual environment and install the required modules

```zsh
pip install --upgrade pip setuptools wheel
```

If you're using GPU, execute

```zsh
pip3 install -r requirements-gpu.txt
```

Otherwise, execute

```zsh
pip3 install -r requirements-cpu.txt
```

Download the English Web Treebank (EWT) pre-trained model from the [provided list][models]

```zsh
wget 'http://bionlp-www.utu.fi/dep-parser-models/models_en_ewt.tgz' && tar xvf 'models_en_ewt.tgz'
```

## Testing the installation
After running these steps, execute the `turku-test-cpu.sh` or `turku-test-gpu.sh` scripts to test the parsing of a simple english sentence with the downloaded EWT model

[models]:   bionlp-www.utu.fi/dep-parser-models/
