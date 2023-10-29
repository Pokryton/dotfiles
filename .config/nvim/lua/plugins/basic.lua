return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")
        end
    },
    
    { "stevearc/stickybuf.nvim", opts = {} },

    {
        "mbbill/undotree",
        keys = { { "<Leader>U", vim.cmd.UndotreeToggle } }
    },

    {
        "tpope/vim-dispatch",
        event = "VeryLazy",
        keys = { { "<Leader>c", vim.cmd.Copen } },
        config = function()
            vim.g.dispatch_compilers = {
                ["gcc"] = "gcc",
                ["g++"] = "gcc",
            }
        end
    },

    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        keys = { { "<Leader>g", ":G" } },
        config = function()
            vim.o.statusline = "%<%f %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%) %P"
        end
    }
}
