return {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    keys = {
        { "<Leader>f", function() require("fzf-lua").files() end },
        { "<Leader>;", function() require("fzf-lua").buffers() end },
        { "<Leader>s", function() require("fzf-lua").grep() end },
        { "<Leader>R", function() require("fzf-lua").command_history() end }
    }
}
