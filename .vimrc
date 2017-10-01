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

call dein#add('joshdick/onedark.vim')

call dein#end()

" Unite
let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" プラグイン以外の設定
" 検索結果をハイライト
set hlsearch
" 小文字のみで検索したときに大文字小文字を無視
set smartcase
" 検索ワードの最初の文字を入力した時点で検索を開始
set incsearch

" カーソルの位置を表示
set ruler
" カーソルの行番号を表示
set number
" 不可視文字を表示
set list
" 対応する括弧やブレースを表示
set showmatch
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title

" スワップファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nobackup
" undo ファイルを作らない
set noundofile

" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示
set showcmd

" クリップボードと連携
set clipboard+=unnamed

" デフォルトのインデント
" タブは2スペース
set tabstop=2
" インデントは2スペース
set shiftwidth=2
" タブを展開する
set expandtab
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab

" filetypeによって設定を変える
filetype plugin indent on
