return {
    "stevearc/oil.nvim",
    lazy = false,
    keys = { { "-", "<Cmd>Oil<CR>" } },
    opts = {
        columns = { "permissions", "size", "mtime" },
        view_options = { show_hidden = true }
    }
}
