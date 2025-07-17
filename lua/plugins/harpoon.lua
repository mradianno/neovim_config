return {
	"ThePrimeagen/harpoon",
	config = function()
		local harpoon = require('harpoon')

		harpoon.setup({
			global_settings = {
				save_on_toggle = false,
				save_on_change = false,
				enter_on_sendcmd = false,
				tmux_autoclose_windows = false,
				excluded_filetypes = { "harpoon" },
				mark_branch = true,
				tabline = false,
				tabline_prefix = "   ",
				tabline_suffix = "   ",
			}
		})

		vim.keymap.set('n', '<leader>ha', function(arg)
			require('harpoon.mark').add_file(arg)
			vim.notify("The file has been marked")
		end, { desc = "[a]dd file" }
		)
		vim.keymap.set('n', '<leader>hr', function(arg)
			require('harpoon.mark').rm_file(arg)
			vim.notify("The file has been removed from marked files")
		end, { desc = "[r]emove file" }
		)

		vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next, { desc = '[n]ext file' })
		vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev, { desc = '[p]rev file' })
		vim.keymap.set('n', '<leader>hs', require('harpoon.ui').toggle_quick_menu, { desc = 'Toggle list menu' })
		for i = 1, 9, 1 do
			vim.keymap.set('n', '<leader>h' .. i, function()
				require('harpoon.ui').nav_file(i)
			end, { desc = 'Go to file nr. ' .. i }
			)
		end
	end
}
