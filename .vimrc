set laststatus=2
set t_Co=256
syntax on
vnoremap <C-c> "*y
set number relativenumber
set so=5
let mapleader = " "

" tab = 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

call plug#begin('~/.vim/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'airblade/vim-gitgutter'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'dense-analysis/ale'
	Plug 'cocopon/iceberg.vim'
	Plug 'gkeep/iceberg-dark'
call plug#end()

" fzf
nmap <leader>f :Files<cr>
nmap <leader>/ :BLines<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>r :Rg
nmap <leader>c :Commands<cr>

colorscheme iceberg

set termguicolors

"LightLine settings
let g:lightline = {'colorscheme': 'icebergDark', 'separator': { 'left': '', 'right': '' }, 'subseparator': { 'left': '', 'right': '' }}
