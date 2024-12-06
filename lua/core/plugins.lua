local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

local packer = require("packer")
packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-ui-select.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use({"nvimtools/none-ls.nvim",requires = {{"nvimtools/none-ls-extras.nvim"}}})
	use("hrsh7th/nvim-cmp")
	use({
		"L3MON4D3/LuaSnip",
		requires = { {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		} },
	})
	use("hrsh7th/cmp-nvim-lsp")
	use("akinsho/toggleterm.nvim")
	use("lewis6991/gitsigns.nvim")
	use("tpope/vim-fugitive")
	use("dgagn/diagflow.nvim")
	use("nyngwang/murmur.lua")

	if packer_bootstrap then
		require("packer").sync()
	else
		require("core.plugin_config")
	end
end)

packer.on_compile_done = function()
	vim.cmd([[doautocmd User PackerCompileDone]])

	if packer_bootstrap then
		require("core.plugin_config")

		vim.cmd.MasonInstall("stylua")
		vim.cmd.MasonInstall("prettierd")
		vim.cmd.MasonInstall("eslint_d")
	end
end
