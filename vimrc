" Initialize the pathogen plugin
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

" Solarized color scheme
syntax enable
set background=dark
colorscheme solarized

" Set backup settings 
set backup
set backupdir=~/.vim/backup " Directory for backup files
set directory=~/.vim/tmp    " Directory for swap files
