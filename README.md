# Intro
My personal vim setup.  

Good for python, changes quite often as I'm experimenting a lot.   
Relies on YCM for autocompletion. ALE for linters, fixers and navigation.

Colorscheme: Zenburn, low contrast and relaxing colors.

Don't hesitate to use it/comment.

# Installation
Install should be automatic for all plugins except YouCompleteMe. 

For the latter, run the follow:
`apt install build-essential cmake vim-nox python3-dev`
`apt install mono-complete golang nodejs default-jdk npm`
`cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all`  

For ALE, you need to install your linters/fixers in your environment. For us:
`pip install pylint flake8 pyright black isort`. Run vim from your environment.  

# Commands
### Searching for patterns
You can use `vimgrep /pattern/g **/*.py` and check the results in the quicklist (`:cw`).  
We might switch to fzf as some point.  

### Going to implementation
`gd` will open the file with the function in a vertical split.  

### Resolving git conflicts
- `Gvdiffsplit!` (! for 3 way merge)
- `diffget` //2 or //3 (2: left buffer, target branch, 3: right buffer, merge branch)
- Switch between conflict markers: `]c` and `[c`
- Apply entire content from one branch: switch to branch and then `Gwrite!`

### Navigating csv files
- `VertFold column_number` hide `column_number` first columns
