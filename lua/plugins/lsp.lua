local function configure_lsp(server, config)
	vim.lsp.config(server, config)
	vim.lsp.enable(server)
end

return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.inlay_hint.enable(true)

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		configure_lsp("lua_ls", {
			capabilities = capabilities,
			settings = {
				Lua = {
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
				},
			},
		})
		configure_lsp("pyright", {
			capabilities = capabilities,
		})

		configure_lsp("jdtls", {
			capabilities = capabilities,
		})

		configure_lsp("marksman", {
			capabilities = capabilities,
		})
	end,
}
