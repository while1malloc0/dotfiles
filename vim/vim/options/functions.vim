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
