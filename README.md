# Intro
My personal vim setup.  

Good for python, changes quite often as I'm experimenting a lot.   
Relies on python-mode to navigate python projects. Relies on YCM for autocompletion. Colorscheme: Zenburn, low contrast and relaxing colors.

Don't hesitate to use it/comment.

# Commands
## Resolving git conflicts
- `Gvdiffsplit!` (! for 3 way merge)
- `diffget` //2 or //3 (2: left buffer, target branch, 3: right buffer, merge branch)
- Switch between conflict markers: `]c` and `[c`
- Apply entire content from one branch: switch to branch and then `Gwrite!`

## Navigating csv files
- `VertFold column_number` hide `column_number` first columns
