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

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

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
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim'
Bundle 'altercation/vim-colors-solarized'

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
