local options = {
    -- Make text not wrap because its annoying
    wrap = false,

    -- Set nvim to use terminal colors
    termguicolors = true,

	-- Highlight line cursor is on
	cursorline = true,

	-- Enable absolute and relative line numbers
	number = true,
	relativenumber = true,

	-- Indentation
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	smartindent = true,

	winborder = "rounded",

	-- Bind yank and put to wl-clipboard
	clipboard = "unnamedplus",

	updatetime = 250,

    swapfile = false,

    foldmethod = "manual"
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Diagnostics Setup
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = true,
})
