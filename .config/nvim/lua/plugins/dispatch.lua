return {
  "tpope/vim-dispatch",
  event = "VeryLazy",
  keys = { { "<Leader>q", vim.cmd.Copen } },
  config = function()
    vim.g.dispatch_compilers = {
      ["gcc"] = "gcc",
      ["g++"] = "gcc",
    }
  end,
}
