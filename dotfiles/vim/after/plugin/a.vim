nmap <silent>/  :ShowSearchIndex<CR><Plug>(incsearch-forward)
nmap <silent>?  :ShowSearchIndex<CR><Plug>(incsearch-backward)
nmap <silent>g/ :ShowSearchIndex<CR><Plug>(incsearch-stay)
nnoremap <silent>n  nzz:ShowSearchIndex<CR>
nnoremap <silent>N  Nzz:ShowSearchIndex<CR>
