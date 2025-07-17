return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup()

		local Terminal = require("toggleterm.terminal").Terminal

		function _toggleNewTerminal()
			local terminal = Terminal:new()
			terminal:toggle()
		end

		vim.keymap.set("n", "<leader>to", _toggleNewTerminal, { desc = '[o]pen new' })
		vim.keymap.set("n", "<leader>tt", ":ToggleTermToggleAll<CR>", { desc = '[t]oggle existing' })
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], {})
	end,
}
