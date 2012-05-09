""Set options

"Nessessary for lots of cool things in vim
set nocompatible

"Go to the directory with file
set autochdir

"Shows what you are typing as a command
set showcmd

"Ignoring case when using search
set ignorecase

"Line number
set number

"Regexps
set magic

"Save some history
set history=1000

"Test
set scrolljump=3
set scrolloff=3

"Do not show mouse while typing
set mousehide

"Syntax hilighting and stuff
filetype on
filetype plugin on
filetype plugin indent on
filetype indent on
syntax enable
set grepprg=grep\ -nH\ $*

"Well...
set autoindent
set smartindent
set cindent
set cinwords=if,else,while,for,switch,do,foreach

"Folding
"set foldmethod=indent

"Charset
set termencoding=utf-8

"Do not unload buffer when we load inside another file
set hidden

"Autosave on window switch
au FocusLost * :wa

"Spaces in place of tabs
set expandtab
set smarttab

"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

"4 character tab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"Tab completion
set wildmenu
set wildmode=list:longest,full

"Mouse support
set mouse=a

"Backspace?
set backspace=2

"Artificial intelligence
set smartcase

"Incremental search
set incsearch

"Hilight search things
set hlsearch

"Shows closing paranthes and stuff
set showmatch

"Fast terminal
set ttyfast

""Backup
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

""Gui options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

""Color scheme
set background=dark
if has("gui_running")
    colorscheme molokai
else
    colorscheme desert
endif

""Mappings

"Esc
imap <S-Space> <Esc>
inoremap jj <Esc>

let mapleader = ","
"Fold tag
nnoremap <leader>ft Vatzf
"Reselect the text that have been pasted
nnoremap <leader>v V`]

"Copy/paste in global clipboard
vmap <C-C> "+yi
imap <C-V> <Esc>"+gPi

imap <C-d> <Esc>yypi

imap [ []<LEFT>
imap {<CR> {<CR>}<Esc>O

"No fcking help!
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"I said no fucking help!!
nnoremap K k
vnoremap K k




""Where to search for words for autocomplete
set complete=""
"From current buffer
set complete+=.
"From dictionary
set complete+=k
"From other buffers
set complete+=b
"From tags
set complete+=t

"Map for autocmplete
imap <C-Space> <C-N>

"Bufexplorer mapings
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc>:BufExplorer<cr>

" F6 - previous buffer
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - next buffer
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" Conque terminal mappings
inoremap <F8> <Esc>:ConqueTerm bash<cr>
nnoremap <F8> <Esc>:ConqueTerm bash<cr>
vnoremap <F8> <Esc>:ConqueTerm bash<cr>

"Nerdtree mappings
nmap <F2> :NERDTree<cr>
vmap <F2> <esc>:NERDTree<cr>i
imap <F2> <esc>:NERDTree<cr>i

nmap <F3> :NERDTreeClose<cr>
vmap <F3> <esc>:NERDTreeClose<cr>i
imap <F3> <esc>:NERDTreeClose<cr>i


