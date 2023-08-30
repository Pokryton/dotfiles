return {
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        -- cmd = "Git",
        config = function()
            vim.cmd.cnoreabbrev("git Git")
            vim.cmd.cnoreabbrev("Gblame Git blame")
            vim.cmd.cnoreabbrev("Gcommit Git commit")
        end,
    },
}
