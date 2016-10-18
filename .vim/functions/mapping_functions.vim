" to make useful:
"inoremap <tab> <c-r>=InsertTabWrapper("forward")<cr>
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    " let check = exe "\<c-p>"
    " echo check
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction

" to make useful:
" nnoremap <silent> <Left>  :call WrapLeft()<cr>
" nnoremap <silent> <Right> :call WrapRight()<cr>
"
" nnoremap <silent> h       :call WrapLeft()<cr>
" nnoremap <silent> l       :call WrapRight()<cr>
"
function! WrapLeft()
    let col = col(".")
    
    if 1 == col
        " don't wrap if we're on the first line
        if 1 == line(".")
            return
        endif
        normal! k$
    else
        normal! h
    endif
endfunction

function! WrapRight()
    let col = col(".")
    if 1 != col("$")
        let col = col + 1
    endif
        
    if col("$") == col
        " don't wrap if we're on the last line
        if line("$") == line(".")
            return
        endif
        normal! j1|
    else
        normal! l
    endif
endfunction
