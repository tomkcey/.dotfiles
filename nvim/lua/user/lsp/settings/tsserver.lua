return {
	filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
	root_dir = function()
		return vim.loop.cwd()
	end,
}
