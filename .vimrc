set laststatus=2
set t_Co=256
syntax on
vnoremap <C-c> "*y
set number relativenumber
set mouse=a
let mapleader = " "

" tab = 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

call plug#begin('~/.vim/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'dense-analysis/ale'
	Plug 'cocopon/iceberg.vim'
	Plug 'gkeep/iceberg-dark'
call plug#end()

colorscheme iceberg

set termguicolors

" lightline settings
let g:lightline = {'colorscheme': 'icebergDark'}
