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
