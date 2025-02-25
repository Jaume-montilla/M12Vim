return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer", "bashls", "arduino_language_server", "cssls", "vtsls", "html", "jsonls", "phpactor", "pylsp", "vuels" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.bashls.setup({})
			lspconfig.arduino_language_server.setup({})
			lspconfig.cssls.setup({})
			lspconfig.vtsls.setup({})
			lspconfig.html.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.phpactor.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.vuels.setup({})

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<leader>gv', function()
				vim.cmd('vsplit')
				vim.lsp.buf.definition()
			end, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end
	}
}
