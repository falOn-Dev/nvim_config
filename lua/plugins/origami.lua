return {
	"chrisgrieser/nvim-origami",
	event = "VeryLazy",
    config = function ()
        require("origami").setup({})
    end,
    init = function ()
        vim.opt.foldlevel = 99
        vim.opt.foldlevelstart = 99
    end
}
