" Preamble to Vundle
set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim/

"Installed Plugins
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'scrooloose/syntastic'
<<<<<<< HEAD
Plugin 'davidhalter/jedi-vim'
=======
>>>>>>> f88b9487e7e667ee45b16d81381c672ef0b1b049
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
<<<<<<< HEAD
Plugin 'flazz/vim-colorschemes'
Plugin 'Chiel92/vim-autoformat'
Plugin 'ervandew/supertab'
=======
Plugin 'python.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'powerline/powerline'
Plugin 'hdima/python-syntax'
>>>>>>> f88b9487e7e667ee45b16d81381c672ef0b1b049
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
<<<<<<< HEAD

=======
colorscheme desert
>>>>>>> f88b9487e7e667ee45b16d81381c672ef0b1b049

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
