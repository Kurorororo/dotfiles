if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')

call dein#add('scrooloose/nerdtree')

call dein#add('tomasr/molokai')

call dein#add('bronson/vim-trailing-whitespace')

call dein#end()

" Unite
let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

set hlsearch
set smartcase
set incsearch

set ruler
set number
set list
set showmatch
set listchars=tab:>\ ,extends:<
set title

set noswapfile
set nobackup
set noundofile

set wildmenu
set showcmd

set clipboard+=unnamed

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set smarttab
set autochdir
set hidden

" filetypeによって設定を変える
filetype plugin indent on

syntax on
colorscheme molokai
set background=dark
set colorcolumn=80
