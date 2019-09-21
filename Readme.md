# Template-based text file generator

*Maciej Bak  
Swiss Institute of Bioinformatics*

A very small tool to generate text files based on pre-defined templates.

## Setup

Clone this repository (under your $HOME directory):
```bash
cd;
git clone https://github.com/AngryMaciek/textfile-templates.git;
```

Add the path to the repository to your $PATH permanently:
```bash
vim .bash_profle
# add the following line into the profile file:
# export PATH=$PATH":$HOME/textfile-templates"
```
Update the global variables with your personal information:
```bash
vim textfile-templates/template
```

Give the execution permissions to the script:
```bash
chmod +x textfile-templates/template
```

And finally: restart shell


**Important note**  
This software was developed to work with both GNU and BSD `sed`.
Please do not utilize tab indentation in your template files as
well as whitespace characters
in the personal information variables.

## Examples

Create a Python 3 script:
```bash
template my-script.py
```

Create a C header file:
```bash
template my_path/header.h
```
