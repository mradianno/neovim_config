require("mason").setup()

require("mason-lspconfig").setup({ensure_installed = {
  "lua_ls","tsserver","cssls","eslint","grammarly","html","jdtls"
}})
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({capabilities=capabilities})
lspconfig.tsserver.setup({capabilities=capabilities})
lspconfig.cssls.setup({capabilities=capabilities})
lspconfig.eslint.setup({capabilities=capabilities})
lspconfig.grammarly.setup({capabilities=capabilities})
lspconfig.html.setup({capabilities=capabilities})
lspconfig.jdtls.setup({capabilities=capabilities})

--keymaps
vim.keymap.set('n','K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,{})
vim.keymap.set('n', 'gr', vim.lsp.buf.references,{} )
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})


