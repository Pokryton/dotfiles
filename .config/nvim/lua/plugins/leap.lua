return {
  "ggandor/leap.nvim",
  depedencies = { "tpope/vim-repeat" },
  opts = {},
  keys = {
    { "s", mode = "n", "<Plug>(leap-forward)" },
    { "S", mode = "n", "<Plug>(leap-backward)" },
    { "gs", mode = "n", "<Plug>(leap-from-window)" },
    { "x", mode = { "x", "o" }, "<Plug>(leap-forward)" },
    { "X", mode = { "x", "o" }, "<Plug>(leap-backward)" },
  },
}
