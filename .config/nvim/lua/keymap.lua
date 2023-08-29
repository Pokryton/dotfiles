vim.g.mapleader = " "

vim.keymap.set("", "H", "^")
vim.keymap.set("", "L", "$")

vim.keymap.set({"n", "i"}, "<Left>", "<Cmd>bp<CR>")
vim.keymap.set({"n", "i"}, "<Right>", "<Cmd>bn<CR>")

vim.keymap.set({"n", "t"}, "<A-h>", "<C-w>h")
vim.keymap.set({"n", "t"}, "<A-j>", "<C-w>j")
vim.keymap.set({"n", "t"}, "<A-k>", "<C-w>k")
vim.keymap.set({"n", "t"}, "<A-l>", "<C-w>l")

vim.keymap.set("n", "[q", "<Cmd>cprev<CR>")
vim.keymap.set("n", "]q", "<Cmd>cnext<CR>")

vim.keymap.set("c", "<C-a>", "<Home>")
vim.keymap.set("c", "<C-e>", "<End>")
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<C-f>", "<Right>")
vim.keymap.set("c", "<A-f>", "<C-Right>")
vim.keymap.set("c", "<A-b>", "<C-Left>")

vim.keymap.set({"i", "n"}, "<C-q>", "<Cmd>confirm qall<CR>")
vim.keymap.set({"i", "n"}, "<C-h>", "<Cmd>nohls<CR>")
vim.keymap.set("", "<Tab>", "<Cmd>normal ==<CR>")

vim.keymap.set("n", "<Leader><Leader>", "<C-^>")
vim.keymap.set("n", "<Leader>,", "<Cmd>set invlist<CR>")
vim.keymap.set("n", "<Leader>o", ":e <C-R>=expand('%:p:h') . '/' <CR>")
