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
set guifont=Anonymous\ Pro:h11

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

" Delete buffer without closing windows
nmap <silent> <leader>d :bp\|bd # <CR>

" Better window changing
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"""""""""
" Plugins
"""""""""

""""""""" vim-jsx
" JSX highlighting in JS-files as well
let g:jsx_ext_required = 0

""""""""" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_mode = "passive"
"let g:syntastic_error_symbol = "\u2717"
let g:syntastic_javascript_checkers = ['eslint']
nmap <silent> <leader>sc :SyntasticCheck <CR>
nmap <silent> <leader>sr :SyntasticReset <CR>

""""""""" CtrlP settings
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|node_modules'
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'r' "Set repo as working dir
" Ignore all gitignored files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"""""""" vim-better-whitespace
" Strip whitespace on save
autocmd BufWritepre * StripWhitespace

"""""""" vim-airline
" Always show status bar
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' "
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

"""""""" ag / the_silver_searcher
let g:ag_working_path_mode="r" "always search from repo root
