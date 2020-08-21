# Stanza Biomedical/Clinical Setup
## Documentation
*   [stanza docs][docs];
*   [biomedical model usage][usage].

## Requirements
*   python 3 (tested on version `3.8.5`);
*   virtualenv;

## Installation
Create the parser's directory and `cd` into it
```zsh
mkdir stanza-bio
cd stanza-bio
```

Start the python 3 virtual environment and install the required modules

```zsh
pip install --upgrade pip setuptools wheel stanza
```

To download the biomedical (CRAFT) model, start a interactive python shell. Note that this may take a long time since the download rate is fairly low (about 200kB/s on a google colab's notebook):

``` python
import stanza

# Downloading the models under the current directory
stanza.download('en', dir='./stanza_resources', package='craft')
```

## Testing the installation
Start a python shell and run

```python
import stanza

nlp = stanza.Pipeline('en', dir='./stanza_resources', package='craft')
doc = nlp('A single-cell transcriptomic atlas characterizes ageing tissues in the mouse.')
doc.sentences[0].print_dependencies()
```

[docs]:     https://stanfordnlp.github.io/stanza/
[usage]:    https://stanfordnlp.github.io/stanza/biomed_model_usage.html
