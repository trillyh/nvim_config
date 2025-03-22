local null_ls = require ('null-ls')

local sources = {
	null_ls.builtins.diagnostics.mypy,
--	null_ls.builtins.diagnostics.ruff,
}

null_ls.setup({
	sources = sources 
})
