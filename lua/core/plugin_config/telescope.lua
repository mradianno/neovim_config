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

vim.keymap.set("n", "<leader><space>", call(builtin.buffers, filesViewSettings), {})
vim.keymap.set("n", "<leader>fr", call(builtin.oldfiles, filesViewSettings), {})
vim.keymap.set("n", "<leader>ff", call(builtin.find_files, filesViewSettings), {})
vim.keymap.set("n", "<leader>sg", call(builtin.live_grep, viewWithContentSettings), {})
vim.keymap.set("n", "<leader>sh", call(builtin.help_tags, viewWithContentSettings), {})
vim.keymap.set("n", "<leader>s/", function()
	builtin.live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, { desc = "[S]earch [/] in Open Files" })
