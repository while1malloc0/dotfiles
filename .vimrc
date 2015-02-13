" Preamble to Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/

"Installed Plugins
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'powerline/powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'
Plugin 'ntpeters/vim-better-whitespace'
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
set statusline=2
set nofoldenable

"Disable arrow keys and ESC key
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Esc> <NOP>
inoremap jj <ESC>
