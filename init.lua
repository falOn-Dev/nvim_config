-- Rebind leader to space
vim.keymap.set("n", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")

require("config.options")
require("config.mappings")
require("config.autocmd")
