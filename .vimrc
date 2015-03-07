"  Preamble to Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/

"  Installed Plugins
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()

"  Personal settings
syntax on
filetype indent plugin on
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline
set modelines=4
set background=dark
set nofoldenable
set laststatus=2
set number
set ttyfast
set gdefault
set noeol
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists('&undodir')
    set undodir=~/.vim/undo
endif
set hlsearch
set ignorecase
set mouse=a
set nostartofline
set ruler
set shortmess=atI
set title
set showcmd
set scrolloff=3

" Powerline
let Powerline_symols = 'fancy'

"  Custom key mappings
let mapleader=','
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <leader>ss :call StripWhitespace()<CR>
nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <silent> N N:call HLNext(0.4)<cr>
nnoremap <silent><Space> :nohlsearch<Bar>:echo<CR>
nnoremap ; :
inoremap jj <C-c>

"  Custom color settings
colorscheme desert

"  Custom functions
function! HLNext(blinktime)
    set invcursorline
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    set invcursorline
    redraw
endfunction

function! StripWhitespace()
    let save_cursor = getpos('.')
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

" Startup and autocmd
autocmd vimenter * call cursor(1, 1)
" Start NERDTree on vim start
autocmd vimenter * NERDTree
" Treat JSON with JS syntax
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
" Close NERDTree if it's the only file
autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTreeType') && b:NERDTreeType == 'primary') | q | endif

