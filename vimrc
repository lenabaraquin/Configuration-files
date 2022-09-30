syntax on
filetype indent plugin on

:imap ii <esc>

"compatibilité bépo et autres <C-...>
noremap U <C-r>
nmap è :botright vertical terminal<CR>
"touches directionnelles bépo
map <C-c> h
map <C-t> j
map <C-s> k
map <C-r> l


set syntax=on
set nocompatible
set number
set relativenumber
set autoindent
set smartindent
set showmatch
set incsearch
set smartcase
set wildmenu

"pour la valeur des tabulations et les remplacer par des espaces
set  tabstop=3
set  shiftwidth=3
set  softtabstop=3
set  expandtab

hi clear SpellBad
hi SpellBad cterm=underline


set cindent
set cinoptions=>s,e0,n0,f0,{0,}0,^0,:s,=s,l0,gs,hs,ps,ts,+s,c3,C0,(2s,us,U0,w0,m0,j0,)20,*30

:imap aaa <C-x>s 
:imap ppp <C-p><esc>a
:imap jj <down>
:imap kk <up>


:imap ( ()<left>
:imap [ []<left>
:imap { {}<left>
:imap ,, <right>

"pour ouvrir le terminal dans vim
"noremap <C-T> 
"pour "éditer" le terminal
noremap <C-E> <C-W>N

let extension =  expand("%:e")
if extension == "tex"
   :imap <F1> \textbf{
   :imap <F2> \textit{
   :imap <F3> defeee
   :imap àà \item
   "set spelllang=fr,en
   "set spell
   "set spellsuggest=5
   :!make && make print
   :imap $$ $$<left>
   :imap eee <esc>^dei\begin{<esc>po\end{<esc>pzzO<tab>
   :nmap m :!make
   :nmap M :!make && make print
   :nmap é :!make clean
elseif extension == "html"
   :nmap m :!firefox %
   :imap bbb <esc>^ywo<<esc>pxA/><esc><<k^i<<esc>$a><esc>o
   :imap bbo <esc>^i<<esc>A/>
elseif extension == "java"
   :nmap m :!javac *.java && java Main
   :imap ¶ <esc>o{<esc>lxo}<esc>O
elseif extension == "py"
   :nmap m :!python3 %
   :imap " ""<left>
elseif extension == "c"
   :nmap m :!gcc % -o main && ./main
elseif extension == "sh"
   :nmap m :!./%
endif

