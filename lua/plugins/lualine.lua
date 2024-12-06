return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			icons_enabled = true,
			theme = "gruvbox",
		},
		sections = {
			lualine_a = {

				"windows",
			},
			lualine_b = { "diff", "diagnostics" },
			lualine_c = { { "filename", path = 1 } },
		},
	},
}
