set encoding=utf-8
scriptencoding utf-8

" Indent with spaces, smart tab
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set backspace=indent,eol,start

" Dot for space, arrow for tab
set list
set listchars=tab:→\ ,space:·

" Display line numbers
set number

" Disable matching brace jumping
set noshowmatch

" Enable mouse cursor movement
if has("mouse")
    set mouse=a
endif

" Enable case insensitive search
set ignorecase
set smartcase

" Disable backup/swap files
set nobackup
set nowritebackup
set noswapfile

" Use system clipboard
set clipboard=unnamedplus

" File type detection
filetype on
filetype plugin on
filetype indent on
 
" Color scheme
if has("termguicolors")
    set termguicolors
    if &term =~# '^screen'
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
endif
syntax enable
set background=dark
colorscheme gruvbox

" GUI options
if has("gui_running")
    " Disable I-beam cursor
    set guicursor=

    " Disable toolbar
    set guioptions-=T

    " Set font
    set guifont=Monospace\ 11

    " Force GUI window size
    set lines=25 columns=80
endif
