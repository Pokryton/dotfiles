let g:mapleader = " "

set number relativenumber
set ignorecase smartcase
set splitright splitbelow

set undofile
set clipboard+=unnamedplus
set scrolloff=2
let g:tex_flavor = "latex"

set cinoptions=:0,l1,g0,N-s,(0,W4,j1
set formatoptions=/nBjcroql

set grepprg=rg\ --vimgrep\ --smart-case
set grepformat=%f:%l:%c:%m

command! -nargs=+ Grep execute "silent grep! <args>" | copen
command! -nargs=+ Make execute "silent make! <args>" | copen
" cnoreabbrev grep Grep
" cnoreabbrev make Make

noremap H ^
noremap L $

noremap [q <Cmd>cp<CR>
noremap ]q <Cmd>cn<CR>
noremap [b <Cmd>bp<CR>
noremap ]b <Cmd>bn<CR>

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-c> <C-w>c
nnoremap <A-o> <C-w>o

tnoremap <A-h> <C-w>h
tnoremap <A-j> <C-w>j
tnoremap <A-k> <C-w>k
tnoremap <A-l> <C-w>l
tnoremap <A-c> <C-w>c
tnoremap <A-o> <C-w>o

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <A-f> <S-Right>
cnoremap <A-b> <S-Left>

inoremap <C-h> <Cmd>nohls<CR>
nnoremap <C-h> <Cmd>nohls<CR>
inoremap <C-q> <Cmd>confirm qall<CR>
nnoremap <C-q> <Cmd>confirm qall<CR>
noremap  <Tab> <Cmd>normal ==<CR>

nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>, <Cmd>set invlist<CR>
nnoremap <Leader>o :e <C-R>=expand("%:p:h") . "/"<CR>

lua require("init-lua")
