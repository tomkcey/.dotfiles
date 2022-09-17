local opts = {
	defaults = {
		file_ignore_patterns = { "node_modules" },
	},
}

require("telescope").setup(opts)
