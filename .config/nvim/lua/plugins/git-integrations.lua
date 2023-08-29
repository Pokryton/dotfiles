return {
    {
        "tpope/vim-fugitive",
        -- cmd = "Git",
        config = function()
            vim.cmd.cnoreabbrev("git Git")
        end,
    },
}
