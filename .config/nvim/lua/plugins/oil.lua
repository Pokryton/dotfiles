return {
    "stevearc/oil.nvim",
    lazy = false,
    keys = {
        { "-", "<Cmd>Oil<CR>" }
    },
    opts = {
        columns = {
            "permissions",
            "size",
            "mtime"
        },
        skip_confirm_for_simple_edits = true,
        view_options = {
            show_hidden = true
        },
        keymaps = {
            ["`"] = "actions.tcd",
            ["~"] = "actions.cd",
            ["."] = "actions.open_cmdline",

            ["<Leader>d"] = "actions.tcd",
            ["<Leader>a"] = "actions.cd",
            ["<Leader>t"] = "actions.open_terminal",

            ["<C-h>"] = false,
            ["<C-j>"] = "actions.select_split"
        }
    }
}
