"  Preamble to Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/

"  Installed Plugins
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/vundle'
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'Chiel92/vim-autoformat'
Plugin 'powerline/powerline',  {'rtp': 'powerline/bindings/vim/'}
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fmoralesc/molokayo'
Plugin 'tpope/vim-surround'
Plugin 'klen/rope-vim'
Plugin 'Tagbar'
Plugin 'EasyMotion'
Plugin 'ctrlp.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'godlygeek/tabular'
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
set noswapfile
set nobackup

" Syntastic
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting=0

" Powerline
let Powerline_symbols = 'fancy'

" Nerdtree
let NERDTreeHighlightCursorline=1

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
nnoremap <leader>pdb :call Pdb()<CR>

" NERDTree mappings
nnoremap <leader>nt :NERDTreeToggle<CR>

" Rope mappings
nnoremap <leader>rgd :RopeGotoDefinition<CR>
nnoremap <leader>rr :RopeRename<CR>
nnoremap <leader>roo :RopeOrganizeImports<CR>
vnoremap <leader>rev :RopeExtractVariable<CR>
vnoremap <leader>rem :RopeExtractMethod<CR>

" Tagbar mappings
nnoremap <leader>tt :TagbarToggle<CR>

" Custom color settings
colorscheme molokayo

" Custom functions
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

function! Pdb()
    execute "normal oimport ipdb; ipdb.set_trace()"
endfunction

" Call molokayo color on startup
autocmd vimenter * :color molokayo
" Treat JSON with JS syntax
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
" Close NERDTree if it's the only file
autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTreeType') && b:NERDTreeType == 'primary') | q | endif

" Reload when vimrc changes
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost ~/.vimrc source ~/.vimrc
    redraw
augroup END " }


