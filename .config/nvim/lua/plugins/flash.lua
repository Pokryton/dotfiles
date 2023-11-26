return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
        modes = {
            char = { enabled = false, }
        }
    },
    keys = {
        {
            "s", mode = { "n", "x", "o" },
            function() require("flash").jump() end,
            desc = "Flash",
        },
        {
            "x", mode = { "x", "o" },
            function() require("flash").jump { jump = { offset = -1 } } end,
            desc = "Flash",
        },
        {
            "r", mode = "o",
            function() require("flash").remote() end,
            desc = "Remote Flash",
        },
        {
            "<c-s>", mode = "c",
            function() require("flash").toggle() end,
            desc = "Toggle Flash Search",
        },
    }
}
