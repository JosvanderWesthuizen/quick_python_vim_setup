" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

set shell=bash

" TODO: Load plugins here (pathogen or vundle)
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wincent/Command-T'
" Plugin 'lervag/vimtex' 
"Plugin 'gerw/vim-latex-suite'
"Plugin 'vim-latex/vim-latex'
"Plugin 'jcf/vim-latex.git'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Vimjas/vim-python-pep8-indent'

" Final line of plugins
call vundle#end()

" For plugins to load correctly
filetype plugin indent on

" Turn on syntax highlighting
" syntax enable
set t_Co=256
syntax on
set background=dark
colorscheme distinguished

" Allow windows style ctrl+c, ctrl+v to work in vim
" Now, to get to visual mode, use CTRL-Q
source $VIMRUNTIME/mswin.vim
behave mswin

" Set the home directory to the e drive
"let workpath='E:\Google Drive'
"cd `=workpath`

" TODO: Pick a leader key
" let mapleader = ","

set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

""""""""""""""""""""" Some syntastic settings """""""""""""""""""""""""""""
let g:syntastic_python_checkers= ['flake8']
let options = "--max-complexity 11 --max-line-length=80 --ignore=E111,E114,E116,E306,E731,E231,E226,C901"
let g:syntastic_python_flake8_args = options
let g:syntastic_tex_checkers = ['lacheck']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_highlighting = 1
let g:syntastic_enable_signs = 1

let g:syntastic_error_symbol = "x"
let g:syntastic_warning_symbol = "!"
let g:syntastic_style_error_symbol = ":("
let g:syntastic_style_warning_symbol = ":/"

""""""""""""""""""""" Some airline settings """""""""""""""""""""""""""""
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

""""""""""""""""""""" Some vim-latex settings """""""""""""""""""""""""""""
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
" set grepprg=grep\ -nH\ $*

" let g:tex_flavor='latex'

""""""""""""""""""""" Some Syntastic settings"""""""""""""""""""""""""""""
"let g:statline_syntastic = 0
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" 
" let g:syntastic_enable_highlighting = 1
" let g:syntastic_enable_signs = 1
" 
" let g:syntastic_error_symbol = "✗"
" let g:syntastic_warning_symbol = "!"
" let g:syntastic_style_error_symbol = "😞"
" let g:syntastic_style_warning_symbol = "😕"
" let g:syntastic_tex_checkers = ['lacheck']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" Some Nerdcommenter settings"""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs

" Allow commenting empty lines
let g:NERDCommentEmptyLines = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

"Special options for some files
autocmd Filetype tex setlocal ts=2 sw=2 sts=2 

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

noh

" Allow scrolling
set mouse=a
