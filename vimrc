" /etc/vim/vimrc
"
" ':help options' ou ':help nom_du_paramètre' ou <F1> sur un mot
" pour avoir de l'aide sur les paramètres de ce fichier de configuration

""""""""""
" Bundle "
""""""""""

if has('vim_starting')
  set nocompatible

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Plugin manager
NeoBundleFetch 'Shougo/neobundle.vim'

""" My Bundles here:
"
" Informations sur le charactère (ga)
NeoBundle 'tpope/vim-characterize'
" Où sont définis les map (:Listmaps)
NeoBundle 'listmaps.vim'

" Ajoute une goutiere avec les marques
NeoBundle 'tomtom/quickfixsigns_vim'
" Explorateur de fichier
NeoBundle 'scrooloose/nerdtree'
" Afficher la liste des buffers en bas de la fenêtre
NeoBundle 'buftabs'
" Ouvre une fenêtre avec la liste des buffers
NeoBundle 'jeetsukumaran/vim-buffergator'
" visualisation du undotre
NeoBundle 'mbbill/undotree'
" Redimentionne lors du changement de fenêtre
NeoBundle 'zhaocai/GoldenView.Vim'
" Affiche les niveau d'indentation
NeoBundle 'nathanaelkane/vim-indent-guides'
" Même interaction avec la ligne de commande qu'avec bash
NeoBundle 'houtsnip/vim-emacscommandline'
" Incrémente, décrémente date heure etc
NeoBundle 'tpope/vim-speeddating'
" t/f multiligne
NeoBundle 'svermeulen/vim-extended-ft'
" déplacement facilité
NeoBundle 'Lokaltog/vim-easymotion'
" / Affiche la position du match sur l'ensemble des match possibles
NeoBundle 'henrik/vim-indexed-search'
" incsearch sur tous les match
NeoBundle 'haya14busa/incsearch.vim'
" Surligne le mot sous le curseur (<leader>k)
NeoBundle 'vasconcelloslf/vim-interestingwords'
" * sur la selection
NeoBundle 'nelstrom/vim-visual-star-search'
" Élargis la selection incrémentalement
NeoBundle 'terryma/vim-expand-region'
" facilite la recherche, la substitution et les abbréviations
NeoBundle 'tpope/vim-abolish'
" % évolué
NeoBundle 'tmhedberg/matchit'
" « . » répète les plugins
NeoBundle 'tpope/vim-repeat'
" Auto completion pour '"({...
NeoBundle 'Raimondi/delimitMate'
" Dans quelle parenthèse se trouve t'on
NeoBundle 'arnar/vim-matchopen'
" sur un tag html, cherche la balise associée
NeoBundle 'Valloric/MatchTagAlways'
" pour le tag <a>, ne souligne que le texte
NeoBundle 'tudorprodan/html_annoyance.vim'
" Manipulation des caractères entourant qqch
NeoBundle 'tpope/vim-surround'
" Permet de définir un opérateur (lib)
NeoBundle 'kana/vim-operator-user'
" Remplace un objet texte par un autre
NeoBundle 'kana/vim-operator-replace'
" Plus belle indentation
NeoBundle 'godlygeek/tabular'
" Comment region of code
NeoBundle 'tpope/vim-commentary'
" syntax checking
NeoBundle 'scrooloose/syntastic'
" Affiche le nom de la fonction courante
NeoBundle 'tyru/current-func-info.vim'
" fenêtre des tags
NeoBundle 'majutsushi/tagbar'
NeoBundle 'techlivezheng/tagbar-phpctags'
NeoBundle 'techlivezheng/phpctags'
" Support pour CSS3, HTMl5, ES6, DOM...
NeoBundle 'mozfr/mozilla.vim'
" syntax js pour le DOM, Ajax...
NeoBundle 'jelera/vim-javascript-syntax'
" syntax js pour des lib usuelles (jQuery, angularJS...)
NeoBundle 'othree/javascript-libraries-syntax.vim'
" Meilleur complétion et indentation pour PHP
NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle '2072/PHP-Indenting-for-VIm'
NeoBundle 'php.vim'
NeoBundle 'captbaritone/better-indent-support-for-php-with-html'
"Bundle 'phpfolding.vim'
" Support twig
NeoBundle 'evidens/vim-twig'
" Support less
NeoBundle 'groenewege/vim-less'
" Snippet
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
" Complétion avec <tab>
NeoBundle 'ervandew/supertab'
" Dockerfile syntax
NeoBundle 'ekalinin/Dockerfile.vim'

" Permet d'écrire des tableau
NeoBundle 'dhruvasagar/vim-table-mode'

" Lien vers jsfiddle
NeoBundle 'mohitleo9/vim-fidget',{
\  'build' : {
\    'unix' : 'npm install',
\    'mac'  : 'npm install',
\  },
\} 

" hard mode, pour un perfectionnement de vim
NeoBundle 'wikitopian/hardmode'

call neobundle#end()


"""""""""""""""""""""""""
" Configuration general "
"""""""""""""""""""""""""

" Ne pas assurer la compatibilité avec l'ancien Vi
set nocompatible

" demande avant de quitter un fichier non sauvegardé
set confirm

" Configuration locale
set exrc
set secure
set modelines=0

"Mode UNIX : retour à la ligne = \n
set fileformat=unix
set fileformats=unix

"Encodage des caractères en utf-8
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
scriptencoding utf-8

" À l'ouverture d'un fichier, ouvre le buffer associé si il existe
set switchbuf=useopen

" Nombre de commandes dans l'historique
set history=500

" Options du fichier ~/.viminfo
set viminfo=!,'100,<100,s100,:0,/100,h,

" undo
set undofile
set undodir=~/.vim/undodir

" swap
set swapfile
set swapsync="fsync"

" Active la touche Backspace
set backspace=start,indent,eol

" Autorise le passage d'une ligne à l'autre
" avec les flèches gauche et droite, <BS>, <Space> et ~
set whichwrap=<,>,[,],b,s,~

" Y agit comme les autres capital
nnoremap Y y$

" Déplacement d'une ligne à l'écran à l'autre avec les flèche haut et bas
nnoremap <silent> <UP>   gk
nnoremap <silent> <DOWN> gj
vnoremap <silent> <UP>   gk
vnoremap <silent> <DOWN> gj
inoremap <silent> <UP>   <C-O>gk
inoremap <silent> <DOWN> <C-O>gj

" Definition d'un mot vim
set iskeyword+=_,$,@,%,#,-

" Définition de la leaderkey
let mapleader="\<SPACE>"

" Copie dans le presse papier système
"if has('clipboard')
"  set clipboard=unnamed
"  if has('unnamedplus')
"    set clipboard+=unnamedplus
"  endif
"endif

" coller depuis le système
nnoremap <F8> :set paste<CR>i
au InsertLeave * set nopaste

""""""""""""""""""""""""""""""""
" Configuration de l'interface "
""""""""""""""""""""""""""""""""

" Signaler les erreurs
set errorbells
" Pas de son pour les erreurs
set visualbell

" Ne pas afficher le message d'introduction
set shortmess=Io

" Toujours dire si une commande a changé des lignes
set report=0

" Ne pas redessiner l'écran lors de l'exécution de macro
set lazyredraw

" Tout le temps soigner l'interface
set ttyfast

" fréquence des maj du swap
set updatetime=4000

" Affiche la commande que vous êtes en train de taper
set showcmd
" Affiche le mode en cours
set showmode

" Afficher les numéros de ligne
set number
" Afficher les numéros de ligne relativement à la position du curseur
" set relativenumber
" Permet de passer de 'set number' à 'set relativenumber' avec <F4>
nnoremap <silent> <F4> :if &number \| set relativenumber \| else \| set number \| endif<CR>

" Nombre de ligne pour la ligne de commande
set cmdheight=1

" Affiche une barre de statut en bas de l'écran
set laststatus=2

" Contenu de la barre de statut
set statusline=%<%y%f%h%r%m\ Buf:\ #%n\ %{cfi#format(\"[%s()]\",\ \"[no\ function]\")}%=Line:\ %l/%L[%P]\ Col:\ %c

" Garde toujours une ligne visible à l'écran au dessus du curseur
set scrolloff=1

" Taille minimal d'une fenêtre vim
set winminheight=0

" Caractères pour les séparations
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:.,diff:⣿

" Plus de couleur et un titre dans un terminal graphique
if &term == "xterm" || &term == "screen-bce"
  set t_Co=256
  set title
  set titlestring=VIM\ \ -\ \ %F\ %m
endif

" Option pour vimdiff
set diffopt=filler,context:3,vertical

" Permet de positionner le curseur là où il n'y a pas de caractère
set virtualedit=block

" En mode selection, le dernier caractère de la selection est inclus
set selection=inclusive

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="


"""""""""""""""""""""""""
" Présentation du texte "
"""""""""""""""""""""""""

" Nombre de colonnes (inutile, voire gênant)
"set columns=80

" Largeur maxi du texte inséré
" '72' permet de couper les lignes automatiquement à 72 caractères
" '0' désactive la fonction
set textwidth=0

" Afficher les longues lignes sur plusieurs lignes
set wrap
" Ne coupe pas les mots lors d'un retour à la ligne
set linebreak
" Comment couper les lignes
set breakat=\ ,;:.!?
" Début d'une ligne coupée
set showbreak=↪

" affiche la dernière ligne
" affiche les caractères non imprimable sous la forme <xx>
set display=lastline,uhex

" Essaye de garder le curseur dans la même colonne quand on change de ligne
set nostartofline

" Caractères utilisés pour l'affichage des caractères non imprimable lors d'un
" :list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:.,nbsp:_

" option pour la mis en page automatique
set formatoptions=tcroqn


"""""""""""""
" Recherche "
"""""""""""""

" Recherche insensible à la casse lorsque aucune majuscule n'est utilisée.
set ignorecase
set smartcase

" Recherche incrémentielle
set incsearch
" A la fin du fichier, recommence la recherche au début
set wrapscan

" utilise des regex normales (voir 'magic')
nnoremap / /\v
vnoremap / /\v

" Positionne le curseur au milieu de l'écran après une recherche
noremap n nzz
noremap N Nzz
noremap * *zz
noremap # #zz

" Permet d'activer ou désactiver la coloration avec <F12>
noremap  <silent> <F12>      :set hlsearch!<cr>
inoremap <silent> <F12> <esc>:set hlsearch!<cr>a

" Liste les occurrences de la dernière recherche
function! SearchListToggle()
  if exists("g:qfix_win")
    unlet g:qfix_win
    cclose
  else
    let g:qfix_win=1
    execute 'vimgrep /'.@/.'/g %'
    copen
    " = <C-w>L
    normal L
  endif
endfunction
nnoremap <silent> <S-F12> :call SearchListToggle()<CR>


"""""""""""""""""
" Programmation "
"""""""""""""""""

" Détection automatique du type de fichier
filetype plugin indent on

" Active la coloration syntaxique
syntax enable
" Définit le jeu de couleurs utilisé
" Les jeux de couleur disponibles sont les fichiers avec l'extension .vim
" dans le répertoire /usr/share/vim/vimcurrent/colors/
set background=dark
colorscheme delek

" Affiche la paire de parenthèses
set showmatch
" Temps d'affichage
set matchtime=3

" n'insère pas 2 espaces après une phrase
set nojoinspaces


"""""""""""""""
" Indentation "
"""""""""""""""

" Indentation automatique
set autoindent
" Indentation intelligente
" obsolète ?
set smartindent
" Indentation dans le style C
set cindent
" Options d'indentation pour un fichier C
set cinoptions=(0

" Taille de l'indentation
set shiftwidth=4

" << agit sur les niveaux d'indentation
set shiftround

" Comportement de <TAB> intelligent
set smarttab
" Change les tabulations en espaces
set expandtab
" Nombre d'espace d'une tabulation
set tabstop=4
set softtabstop=4

" p et P indentent lors de la copie
nnoremap <leader>p p
nnoremap <leader>P P
nnoremap <silent> p p'[v']=
nnoremap <silent> P P'[v']=

" L'indentation en mode visuel ne quitte pas le mode
vnoremap < <gv
vnoremap > >gv
vnoremap = =gv

" Sélectionne le dernier "coller"
nnoremap <expr> gV "`[".getregtype(v:register)[0]."`]"

""""""""""""""""""
" AutoComplétion "
""""""""""""""""""

" Une petite fenêtre pour voir les complétions possibles
"set wildmenu

" Ignore certain fichier
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" Option de la complétion automatique
" complète avec la plus longue chaine commune et liste toutes les possibilités
" Puis complète la prochaine possibilité
set wildmode=longest:list,full

" Comment completer
set completeopt=longest,menu,preview


""""""""""
" Replis "
""""""""""

" Activer les replis
set nofoldenable

" Le découpage des replis se base sur l'indentation
"set foldmethod=indent

" Pas de replis automatique
"set foldlevel=10

" Quand ouvrir les replis
"set foldopen=mark,search,tag,undo

" Refermer automatiquement les replis
"set foldclose=all

" Ouvrir les replis avec <CR>
"nnoremap <CR> zo


"""""""""""""""""""""""""""""
" Correction orthographique "
"""""""""""""""""""""""""""""

" Desactive la correction syntaxique
set nospell
" Permet d'activer ou désactiver la coloration avec <F2>
noremap  <silent> <F2>      :set spell!<cr>
inoremap <silent> <F2> <esc>:set spell!<cr>a

" Définit les langues utilisées pour la correction
set spelllang=fr,en

" Nombre de correction proposé
set spellsuggest=5


""""""""""""""""""""""""""""""""
" Buffers, fenêtres et onglets "
""""""""""""""""""""""""""""""""

" Permet de changer de buffer sans avoir à enregistrer.
set hidden

" se déplacer dans les buffers avec Ctrl <- et ->
noremap <silent> <C-RIGHT> <ESC>:bnext<CR>
noremap <silent> <C-LEFT>  <ESC>:bprevious<CR>

" se déplacer dans les onglets avec <C-S> <- et ->
noremap <silent> <C-DOWN> <ESC>:tabnext<CR>
noremap <silent> <C-UP>  <ESC>:tabprevious<CR>

" Par défaut une nouvelle fenêtre est en bas ou à droite
set splitbelow
set splitright

" Navigation plus simple entre les fenêtres
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Nombre maximum d'onglet
set tabpagemax=10

" Afficher la barre des onglets si il y a au moins deux onglets ouvert
set showtabline=1

" apparence de la barre d'onglet
set tabline=


""""""""""""""""""""""""""
" Fonctions personnelles "
""""""""""""""""""""""""""

cmap w!! %!sudo tee > /dev/null %

" Affiche les différences entre le tampon actif et le fichier correspondant sur le disque
function! DiffOrig()
  if !exists("b:diff_active") && &buftype == "nofile"
    echoerr "E: Cannot diff a scratch buffer"
    return -1
  elseif expand("%") == ""
    echoerr "E: Buffer doesn't exist on disk"
    return -1
  endif

  if !exists("b:diff_active") || b:diff_active == 0
    let b:diff_active = 1
    let l:orig_filetype = &l:filetype

    rightbelow vnew
    let t:diff_buffer = bufnr("%")
    set buftype=nofile

    read #
    0delete_
    let &l:filetype = l:orig_filetype

    diffthis
    wincmd p
    diffthis
  else
    diffoff
    execute "bdelete " . t:diff_buffer
    let b:diff_active = 0
  endif
endfunction
nnoremap <Leader>df :call DiffOrig()<CR>

" Shell dans une fenêtre
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
    if part[0] =~ '\v[%#<]'
      let expanded_part = fnameescape(expand(part))
      let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
    endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)

" reinitialise les options quand on sort d'un vimdiff
autocmd BufWinLeave * if &diff | diffoff | endif


" Crée des buffers brouillons
function! ScratchEdit(cmd, options)
        exe a:cmd tempname()
        setl buftype=nofile bufhidden=wipe nobuflisted
        if !empty(a:options) | exe 'setl' a:options | endif
endfunction

command! -bar -nargs=* Sedit    call ScratchEdit('edit',   <q-args>)
command! -bar -nargs=* Ssplit   call ScratchEdit('split',  <q-args>)
command! -bar -nargs=* Svsplit  call ScratchEdit('vsplit', <q-args>)
command! -bar -nargs=* Stabedit call ScratchEdit('tabe',   <q-args>)

""""""""""""""""""""""""""""""""""""""
" Option spécifique pour les plugins "
""""""""""""""""""""""""""""""""""""""

" NERDTree
nnoremap <silent> <F10> :NERDTreeToggle<CR>

" BufferGator
nnoremap <silent> <S-F10> :BuffergatorToggle<CR>

" undotree
nnoremap <silent> <F9> :UndotreeToggle<CR>

" tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbar_phpctags_bin='/home/etienne/.vim/bundle/phpctags/phpctags'

" Syntastic
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd', 'phpcpd']
let g:syntastic_javascript_checkers=['jshint']

" vim-operator-replace
map <Leader>s  <Plug>(operator-replace)

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" vim indent guide
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=DarkGrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=Black

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Propose d'installer les bundles non installés
NeoBundleCheck
