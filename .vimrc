" Preamble to Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/

"Installed Plugins
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'sjl/gundo.vim'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'Chiel92/vim-autoformat'
Plugin 'ervandew/supertab'
call vundle#end()

"Personal settings
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
if exists("&undodir")
    set undodir=~/.vim/undo
endif
set list
set hlsearch
set ignorecase
set mouse=a
set nostartofline
set ruler
set shortmess=atI
set title
set showcmd
set scrolloff=3


"Custom key mappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Esc> <NOP>
noremap <leader>ss :call StripWhitespace()<CR>
nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <silent> N N:call HLNext(0.4)<cr>
nnoremap ; :
inoremap jj <ESC>
let mapleader=","

"Custom color settings
colorscheme desert

"Custom functions
function! HLNext(blinktime)
    set invcursorline
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    set invcursorline
    redraw
endfunction

function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

"Startup and autocmd
autocmd vimenter * NERDTree
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
    \ formatoptions+=croq softtabstop=4 smartindent
    \ cinwords=if, elif, else, for, while, try, except, finally, def, class, with
let python_highlight_all=1
let python_highlight_exceptions=1
let python_highlight_builtins=1

