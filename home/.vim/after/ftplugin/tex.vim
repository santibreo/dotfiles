" Load common config to documentate (TeX, ReSructuredText, Markdown, Rmd, ...)
source $VIMHOME/after/ftplugin/gendocs.vim

" Fold method plugin based
set foldmethod=expr                   
set foldexpr=vimtex#fold#level(v:lnum)
set foldtext=vimtex#fold#text()

" File paths recognition
setlocal isfname-={
setlocal isfname-=}
