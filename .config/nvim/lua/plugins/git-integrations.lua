return {
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        -- cmd = "Git",
        config = function()
            vim.cmd.cnoreabbrev("git Git")
        end,
    },
}
