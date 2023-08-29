return {
    {
        "tpope/vim-fugitive",
        cmd = "Git",
        init = function()
            vim.cmd.cnoreabbrev("git Git")
        end,
    },
}
