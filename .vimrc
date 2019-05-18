set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" !! write plugins here !!

Plugin 'thinca/vim-quickrun'
Plugin 'alvan/vim-closetag'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 't9md/vim-quickhl'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'reireias/vim-cheatsheet'
Plugin 'suan/vim-instant-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" let g:hybrid_use_iTerm2_colors = `
" colorscheme hybrid
syntax on

if $SHELL =~ '/fish$'
  set shell=bash
endif

" 行番号表示
set number
" 括弧入力時に対応する括弧を表示
set showmatch

"検索時に大文字小文字を無視
set ignorecase
set title
" バックスペース関連
set backspace=indent,eol,start
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する" 
set smartindent

" 自動的にインデント
set autoindent
"タブの幅
set tabstop=4
" カーソル表示
set cursorline
" ステータス行を常に表示
set laststatus=2
" メッセージ表示欄を２行確保
set cmdheight=2

let g:cheatsheet#cheat_file = '~/.cheatsheet.md'

"insert中にjjでescと同等の機能
inoremap jj <Esc>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
