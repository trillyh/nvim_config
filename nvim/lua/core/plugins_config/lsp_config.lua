require("mason").setup({
	ensure_installed = {
		--"mypy",
		"ruff",
	}
})

-- Ensure install lsps with mason
require("mason-lspconfig").setup({
	ensure_installed = { 
		"lua_ls", 
		"pyright",
		"ts_ls",
		"clangd"
	}
})

local on_attach = function(_, bufnr)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

--- Always remember to attach lsp to neovim via lspconfig
require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").pyright.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").ts_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").clangd.setup {
	on_attach = on_attach,
	capabilities = capabilities
}
