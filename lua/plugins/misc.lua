return {
	{ "tpope/vim-fugitive" },
	{ "nvim-tree/nvim-web-devicons" },
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
}
