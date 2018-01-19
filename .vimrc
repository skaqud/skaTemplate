" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

set hlsearch
set ts=4
set sts=4
set sw=1
set autowrite
set autoread
set bs=eol,start,indent
set history=256
set laststatus=2
set paste
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler

colorscheme jellybeans 
