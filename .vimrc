set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" !! write plugins here !!

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" let g:hybrid_use_iTerm2_colors = `
" colorscheme hybrid
syntax on

if $SHELL =~ '/fish$'
  set shell=bash
endif

set number
set cursorline
