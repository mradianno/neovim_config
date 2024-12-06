return {
	"nvim-telescope/telescope-ui-select.nvim",
	opts = {
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown({
					-- even more opts
				}),
			},
		},
	},
	config = function()
		require("telescope").load_extension("ui-select")
	end,
}
