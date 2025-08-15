return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  cmd = "Telescope",
  keys = {
    { "<Leader>f", function() require("telescope.builtin").find_files() end },
    { "<Leader>;", function() require("telescope.builtin").buffers() end },
    { "<Leader>S", function() require("telescope.builtin").live_grep() end },
    { "<Leader>R", function() require("telescope.builtin").command_history({sorter = require("telescope.sorters").get_substr_matcher()}) end },
  },
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      pickers = {
        buffers = {
          mappings = {
            i = {
              ["<C-d>"] = actions.delete_buffer + actions.move_to_top,
            },
          },
        },
      },
    })
    require("telescope").load_extension("fzf")
  end,
}
