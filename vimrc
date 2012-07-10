call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()

set background=dark
colorscheme evening

syntax on
set mouse=a
set mousemodel=extend
set cindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow
set hlsearch
set number
set cpoptions+=$
set cursorline

set directory^=$HOME/.vimswap//   "put all swap files together in one place
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
               \ [%l/%L\ (%p%%)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py :%s/\s\+$//e
filetype indent on
filetype on
filetype plugin on

set backspace=indent,eol,start
