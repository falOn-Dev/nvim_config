return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")

        wk.add({

            { "<leader>e", desc = "Explorer" },

            { "<leader>ff", desc = "Find files" },
            { "<leader>fg", desc = "Live grep" },

            { "<leader>q", desc = "Close buffer" },
            { "<leader>Q", desc = "Force close buffer" },

            { "<leader>nn", desc = "Toggle relative numbers" },

        }) 
    end,
}
