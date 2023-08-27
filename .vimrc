unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set ignorecase
set smartcase

" set termguicolors
" set background=dark

set splitright
set splitbelow

set clipboard^=unnamedplus
set cinoptions=:0,l1,g0,N-s,(0,W4,j1,J1

noremap H ^
noremap L $
inoremap <C-h> <Cmd>nohls<CR>
nnoremap <C-h> <Cmd>nohls<CR>
inoremap <C-q> <Cmd>confirm qall<CR>
nnoremap <C-q> <Cmd>confirm qall<CR>

let g:mapleader = "\<Space>"

noremap <Leader><Leader> <C-^>
