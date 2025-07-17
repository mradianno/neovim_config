return {
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"L3MON4D3/LuaSnip",
		dependecies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
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
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = 'Show type' })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = '[d]efinition' })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = '[i]mplementation' })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = '[r]eferences' })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = '[a]ctions' })
			vim.keymap.set("n", "<leader>gtd", vim.lsp.buf.type_definition, { desc = '[t]ype [d]efinition' })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = '[n]ame' })
		end,
	},
}
