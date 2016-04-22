" Install pathogen
execute pathogen#infect()

" Default indent settings
set expandtab     " Expand tabs to spaces
set shiftwidth=4  " No. spaces for auto indent
set softtabstop=4 " No. of spaces for <Tab>

" Enable file type detection
filetype plugin indent on

" Syntax highlighting
syntax on

" Background and color
set background=dark
colorscheme solarized

" Turn off swapfiles
set noswapfile

" Turn off undofile
set noundofile

" Turn off backup
set nobackup
set nowritebackup

" Set encoding
set encoding=utf8

" Incremental search
set incsearch

" Proper case-insensitive search
set ignorecase
set smartcase

" Line numbers
"set nu
set relativenumber "relative, not absolute

" Ruler
set ruler

" Split right and below
set splitright
set splitbelow

" No. lines above/below cursor when scrolling
set scrolloff=3

" Backspacing in insert mode
set backspace=indent,eol,start

" Show trailing spaces
set list
set listchars=trail:·

" Mouse in all modes
set mouse=a 

" Font for GVIM
set guifont=Consolas:h12

" Remove toolbars in GVIM
set guioptions-=m
set guioptions-=T

" Auto chdir to dir of file in buffer
set autochdir

" Always refresh files
set autoread

" Wildcard ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.dll

" remap jj to esc
inoremap jj <ESC>

" remap leader to comma
let mapleader=","

" edit/reload vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" JSX highlighting in JS-files as well
let g:jsx_ext_required = 0

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_mode = "passive"
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_javascript_checkers = ['eslint']
nmap <silent> <leader>c :SyntasticCheck <CR>

""""""""" CtrlP settings
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|node_modules'
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'r' "Set repo as working dir
" Ignore all gitignored files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"""""""" vim-better-whitespace
" Strip whitespace on save
autocmd BufWritepre * StripWhitespace
