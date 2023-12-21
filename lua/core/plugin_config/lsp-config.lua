require("mason").setup()

require("mason-lspconfig").setup({ensure_installed = {
  "lua_ls","tsserver","cssls","eslint","grammarly","html","jdtls"
}})

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.tsserver.setup({})
lspconfig.cssls.setup({})
lspconfig.eslint.setup({})
lspconfig.grammarly.setup({})
lspconfig.html.setup({})
lspconfig.jdtls.setup({})

--keymaps
vim.keymap.set('n','K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,{})
vim.keymap.set('n', 'gr', vim.lsp.buf.references,{} )
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})


