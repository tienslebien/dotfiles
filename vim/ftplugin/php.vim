"let php_sql_query = 1
let php_htmlInStrings = 1
let php_parent_error_close = 1
let php_noShortTags = 1

setlocal makeprg=php\ -ln\ %
setlocal errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G
nnoremap <buffer> <f9> :silent! make<cr>:cwindow<cr>:redraw!<cr>

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
