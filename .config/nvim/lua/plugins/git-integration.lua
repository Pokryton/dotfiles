return {
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        config = function()
            vim.o.statusline = "%<%f %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%) %P"
        end,
    },
}
