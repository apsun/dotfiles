set encoding=utf-8
scriptencoding utf-8

" Indent with spaces, smart tab
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start

" Dot for space, arrow for tab
set list
set listchars=tab:>\ ,space:.

" Hybrid line numbers
set number
" set relativenumber

" Fix escape delay
set timeoutlen=1000 ttimeoutlen=0

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

" Hard tabs on Makefiles and Go code
autocmd FileType make set noexpandtab shiftwidth=4 tabstop=4
autocmd FileType go set noexpandtab shiftwidth=4 tabstop=4
 
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

" Status line
set laststatus=2
set statusline=
set statusline+=%F
set statusline+=%M
set statusline+=%=
set statusline+=line\ %l
set statusline+=,\ 
set statusline+=col\ %c

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

" xclip mappings
vmap "+y :!xclip -f -sel clip<CR>
map "+p :r!xclip -o -sel clip<CR>
