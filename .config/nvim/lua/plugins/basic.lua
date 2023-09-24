return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")
        end
    },

    { "tpope/vim-dispatch", event = "VeryLazy" },

    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        dependencies = { "tpope/vim-rhubarb" },
        keys = { { "<Leader>g", ":G" } },
        config = function()
            vim.o.statusline = "%<%f %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%) %P"
        end
    }
}
