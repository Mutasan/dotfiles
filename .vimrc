set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" !! write plugins here !!

Plugin 'Shougo/vimproc'
Plugin 'Shougo/neocomplete'
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
" quickrun

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'quickrun.vim'

filetype plugin indent on
" airlineいろいろ

let g:airline_theme = 'wombat'
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1

" neocomplete
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4

" 補完ウィンドウの設定
set completeopt=menuone

" 補完ウィンドウの設定
set completeopt=menuone

" rsenseでの自動補完機能を有効化
let g:rsenseUseOmniFunc = 1
" let g:rsenseHome = '/usr/local/lib/rsense-0.3'

" auto-ctagsを使ってファイル保存時にtagsファイルを更新
let g:auto_ctags = 1

" 起動時に有効化
let g:neocomplcache_enable_at_startup = 1

" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_enable_smart_case = 1

" _(アンダースコア)区切りの補完を有効化
let g:neocomplcache_enable_underbar_completion = 1

let g:neocomplcache_enable_camel_case_completion  =  1

" 最初の補完候補を選択状態にする
let g:neocomplcache_enable_auto_select = 1

" ポップアップメニューで表示される候補の数
let g:neocomplcache_max_list = 20

" シンタックスをキャッシュするときの最小文字長
let g:neocomplcache_min_syntax_length = 3

" 補完の設定
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'

if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

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

set laststatus=2  "常に Status Line を表示する
set statusline=%F%m%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]

let g:cheatsheet#cheat_file = '~/.cheatsheet.md'

"insert中にjjでescと同等の機能
inoremap jj <Esc>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" カッコ補完
inoremap { {}<Left><CR><ESC><S-o>
inoremap [ []<Left><CR><ESC><S-o>
inoremap ( ()<Left>
