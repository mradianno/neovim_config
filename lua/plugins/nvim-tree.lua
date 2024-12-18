return {
	"nvim-tree/nvim-tree.lua",
	keys = {
		{ "<leader>e", ":NvimTreeToggle<CR>", desc = "NvimTree" },
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup()
	end,
}
