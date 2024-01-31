require("gitsigns").setup({})

vim.keymap.set('n', '<leader>hp', ":Gitsigns preview_hunk<CR>")
vim.keymap.set('n', '<leader>hb', ":Gitsigns toggle_current_line_blame<CR>")
