" rend le script shell executable
au BufWritePost * silent !chmod u+x <afile>
" shell script conforme à POSIX
let g:is_posix     = 1
