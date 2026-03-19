return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'master',
  build = ':TSUpdate',
  config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          highlight = { enable = true },
          indent = { enable = true },
          autotag = { enable = true },
          ensure_installed = {
              "lua", "c", "rust", "python", "java"
          },
      })
  end,
}
