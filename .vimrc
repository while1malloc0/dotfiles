" Preamble to Vundle
set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim/

"Installed Plugins
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'sjl/gundo.vim'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'scrooloose/nerdtree'
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
set shell=zsh\ -i

"Custom key mappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Esc> <NOP>
inoremap jj <ESC>


