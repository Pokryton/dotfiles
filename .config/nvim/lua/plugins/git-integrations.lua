return {
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        -- cmd = "Git",
        config = function()
            vim.o.statusline = "%<%f %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%) %P"

            vim.cmd.cnoreabbrev("git Git")
            vim.cmd.cnoreabbrev("Gblame Git blame")
            vim.cmd.cnoreabbrev("Gcommit Git commit")
        end,
    },
}
