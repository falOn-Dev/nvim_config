local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true})
end

-- Basic File Manip
map("n","<leader>w","<Cmd>write<CR>")

-- Window movement
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Neo-Tree
map("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>")

-- Telescope
map("n", "<leader>ff", "<Cmd>Telescope find_files<CR>")
map("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>")

-- Buffer Navigation w/ shift + left/right
map("n", "<S-l>", "<Cmd>bnext<CR>")
map("n", "<S-h>", "<Cmd>bprevious<CR>")

-- Close and Force Close Buffer
map("n", "<leader>q", "<Cmd>BufferClose<CR>")
map("n", "<leader>Q", "<Cmd>BufferClose!<CR>")

-- Reorder Buffers w/ alt + shift + left/right
map('n', '<AS-h>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<AS-l>', '<Cmd>BufferMoveNext<CR>')

-- Jump To Buffer with alt
-- TODO!!

-- Pin Buffer with alt+p
map('n', '<A-p>', '<Cmd>BufferPin<CR>')

-- Open FTerm
map('n', '<leader>z', ":lua require('FTerm').open()<CR>")
map('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>') --preserves session

-- Change Theme
map("n", "<leader>p", "<Cmd>Themery<CR>") --cycle themes

-- LSP 
map("n", "K", vim.lsp.buf.hover)
map("n", "gd", vim.lsp.buf.definition)
map("n", "<leader>ca", vim.lsp.buf.code_action)

-- Formatting
map("n", "<leader>gf", vim.lsp.buf.format)

-- Toggle rel/abs line numbers
map("n", "<leader>nn", function()
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.relativenumber = true
	end
end)
