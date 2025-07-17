return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")

		local filesViewSettings = {
			layout_strategy = "vertical",
			layout_config = { width = 0.8 },
		}

		local viewWithContentSettings = { layout_config = { width = 0.99 } }

		function call(callback, settings)
			return function()
				return callback(settings)
			end
		end

		vim.keymap.set("n", "<leader><space>", call(builtin.buffers, filesViewSettings), { desc = 'Show buffer list' })
		vim.keymap.set("n", "<leader>fo", call(builtin.oldfiles, filesViewSettings), { desc = '[o]ld files' })
		vim.keymap.set("n", "<leader>ff", call(builtin.find_files, filesViewSettings), { desc = '[f]iles' })
		vim.keymap.set("n", "<leader>sg", call(builtin.live_grep, viewWithContentSettings), { desc = '[g]lobal in project' })
		vim.keymap.set("n", "<leader>sh", call(builtin.help_tags, viewWithContentSettings), { desc = '[h]elp' })
		vim.keymap.set("n", "<leader>s/", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = 'in opened files' })
	end,
}
