require("mason").setup()

require("mason-lspconfig").setup({ensure_installed = {
  "lua_ls","tsserver"
}})

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.tsserver.setup({})

--keymaps
vim.keymap.set('n','K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,{})
vim.keymap.set('n', 'gr', vim.lsp.buf.references,{} )
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
