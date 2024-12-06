require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"cssls",
		"eslint",
		"html",
		"jdtls",
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
local settings = {
	capabilities = capabilities,
	root_dir = require("lspconfig.util").root_pattern(".git"),
}

lspconfig.lua_ls.setup(settings)
lspconfig["ts_ls"].setup(settings)
lspconfig.cssls.setup(settings)
lspconfig.eslint.setup(settings)
lspconfig.html.setup(settings)
lspconfig.jdtls.setup(settings)

--keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
