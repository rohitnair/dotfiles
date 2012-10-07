set nocompatible                " choose no compatibility with legacy vi
syntax on
set encoding=utf-8
filetype off

"" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
"set autoindent
set paste
set noeb vb t_vb=               " no beeping

filetype plugin indent on       " load file type plugins + indentation

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Plugins
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'

" gundo
nnoremap <F5> :GundoToggle<CR>

" enable solarized
set background=light
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
colorscheme solarized

" undo persistence
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

" everyone hates .swp files
set nobackup
set noswapfile
