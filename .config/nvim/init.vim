let g:mapleader = " "

set number relativenumber
set ignorecase smartcase
set splitright splitbelow

set autowrite
set undofile
set clipboard+=unnamedplus
set title
set scrolloff=2
let g:tex_flavor = "latex"

set cinoptions=:0,l1,g0,+0,N-s,(0,W4,j1
set formatoptions=/nBjcroql

set grepprg=rg\ --vimgrep\ --smart-case
set grepformat=%f:%l:%c:%m
command! -nargs=+ Grep silent grep! <args> | copen | wincmd p

noremap H ^
noremap L $

noremap [q <Cmd>cp<CR>
noremap ]q <Cmd>cn<CR>
noremap [b <Cmd>bp<CR>
noremap ]b <Cmd>bn<CR>

tnoremap <Esc> <C-\><C-N>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <A-f> <S-Right>
cnoremap <C-b> <Left>
cnoremap <A-b> <S-Left>
cnoremap <C-d> <Del>

inoremap <C-h> <Cmd>nohls<CR>
nnoremap <C-h> <Cmd>nohls<CR>
inoremap <C-q> <Cmd>confirm qall<CR>
nnoremap <C-q> <Cmd>confirm qall<CR>
noremap  <Tab> <Cmd>normal ==<CR>

nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>, <Cmd>set invlist<CR>
nnoremap <Leader>o :e <C-R>=expand("%:p:h") . "/"<CR>

lua require("init-lua")
