" F1 affiche l'aide de la commande sous le curseur
map <buffer> <F1> <ESC>:exec "help '" . expand("<cword>") . "'"<CR><C-W><S-L>
