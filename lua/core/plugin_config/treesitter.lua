require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"java",
		"javascript",
		"typescript",
		"html",
		"css",
		"tsx",
		"yaml",
		"markdown",
		"markdown_inline",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
		"query",
	},

	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
	},
	indent = { enable = true },
})
