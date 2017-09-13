set clipboard+=unnamedplus
set number
set expandtab
set tabstop=2
set shiftwidth=2
set encoding=utf-8
set fileencodings=euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set mouse=a

" syntx 設定
syntax on
colorscheme koehler
"dein
if &compatible
	set nocompatible
endif
set runtimepath+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.config/nvim/dein/repos'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')

call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')

" JpFormat
call dein#add('fuenor/JpFormat.vim')
call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" vim-nerdtree-tabs settings
" 隠しファイルを表示する
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1

nnoremap <silent><C-e> :NERDTreeFocusToggle<CR>

" デフォルトでツリーを表示させる
let g:nerdtree_tabs_open_on_console_startup=1
" NERDTreeタブ移動
nnoremap <C-n> gt
nnoremap <C-p> gT
" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"autocmd VimEnter * execute 'NERDTree'
"autocmd VimEnter * execute 'NERDTreeTabsOpen'
