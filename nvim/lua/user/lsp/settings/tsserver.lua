return {
	filetypes = { "javascript", "typescript" },
	root_dir = function()
		return vim.loop.cwd()
	end,
}
