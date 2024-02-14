return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    modes = { char = { enabled = false } },
  },
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, },
    { "x", mode = { "x", "o" }, function() require("flash").jump({ jump = { offset = -1 } }) end, },
    { "r", mode = "o", function() require("flash").remote() end, },
  },
}
