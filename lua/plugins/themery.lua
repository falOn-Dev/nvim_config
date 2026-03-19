return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
        require("themery").setup({
            themes = {
                {
                    name = "Catppuccin",
                    colorscheme = "catppuccin",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                    after = [[
                        require("lualine").setup({ options = { theme = "ayu_mirage" } })
                    ]]
                },
                {
                    name = "Gruvbox",
                    colorscheme = "gruvbox",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                    after = [[
                        require("lualine").setup({ options = { theme = "gruvbox" } })
                    ]]
                }
            }
        })
    end
}
