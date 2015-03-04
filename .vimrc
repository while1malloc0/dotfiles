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
set background=dark
set nofoldenable
set laststatus=2
set number


"Custom key mappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Esc> <NOP>
inoremap jj <ESC>
let mapleader=","

"Custom color settings
colorscheme desert
