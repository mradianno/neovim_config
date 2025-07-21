return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = {
			"java",
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
	},
}
