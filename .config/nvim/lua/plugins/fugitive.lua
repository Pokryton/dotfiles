return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  dependencies = { "tpope/vim-rhubarb" },
  keys = { { "<Leader>g", ":G" } },
  config = function()
    vim.o.statusline = "%<%f %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%) %P"
    vim.cmd("command! -nargs=1 Browse silent !xdg-open <args>")
  end,
}
