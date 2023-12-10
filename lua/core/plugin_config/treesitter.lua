require("nvim-treesitter.configs").setup {
  ensure_installed = { "java" , "javascript", "typescript", "html", "css" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enabled = true
  },
}
