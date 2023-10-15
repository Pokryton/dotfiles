return {
    'nvim-telescope/telescope.nvim', 
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    keys = {
        { "<Leader>f", function() require("telescope.builtin").find_files() end },
        { "<Leader>;", function() require("telescope.builtin").buffers() end },
        { "<Leader>s", function() require("telescope.builtin").live_grep() end },
    },
    config = function()
        local actions = require("telescope.actions")
        require("telescope").setup {
            defaults = {
                mappings = {
                    i = {
                        ["<ESC>"] = actions.close,
                        ["<C-g>"] = actions.close,
                    },
                },
            },
            pickers = {
                buffers = {
                    mappings = {
                        i = {
                            ["<C-d>"] = actions.delete_buffer + actions.move_to_top,
                        }
                    }
                }
            }
        }
    end
}
