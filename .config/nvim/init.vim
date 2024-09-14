let g:mapleader = " "

set number relativenumber
set ignorecase smartcase
set splitright splitbelow

set tabstop=4 shiftwidth=4
set expandtab

set wildmode=longest:full,full
set wildignore+=*.o,*.obj
set wildignorecase

set diffopt+=algorithm:patience

set title
set autowrite
set undofile
set clipboard+=unnamedplus
set scrolloff=2

let g:tex_flavor = "latex"

set cinoptions=:0,l1,g0,N-s,E-s,(0,W4,j1
set formatoptions=/nBjcroql

autocmd FileType html,css,javascript,typescript setlocal tabstop=2 shiftwidth=2
autocmd FileType qf setlocal nonumber norelativenumber
autocmd FileType go setlocal noexpandtab

autocmd TermOpen * setlocal nonumber norelativenumber

set grepprg=rg\ --vimgrep
set grepformat=%f:%l:%c:%m
command! -nargs=+ Grep silent grep! <args> | copen | wincmd p

command! -nargs=+ -complete=shellcmd Read
            \ new | setlocal buftype=nofile bufhidden=wipe noswapfile |
            \ execute "read !<args>" | normal ggdd

noremap H ^
noremap L $

noremap [q <Cmd>cp<CR>
noremap ]q <Cmd>cn<CR>
noremap [b <Cmd>bp<CR>
noremap ]b <Cmd>bn<CR>

tnoremap <Esc> <C-\><C-N>

inoremap <C-h> <Cmd>nohls<CR>
nnoremap <C-h> <Cmd>nohls<CR>
inoremap <C-q> <Cmd>confirm qall<CR>
nnoremap <C-q> <Cmd>confirm qall<CR>

nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>, <Cmd>set invlist<CR>
nnoremap <Leader>o :e <C-R>=expand("%:p:h")<CR>/

lua require("init-lua")
