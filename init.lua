vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.shiftround = true

vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.clipboard = "unnamedplus"

vim.opt.ignorecase = true
vim.opt.smartcase = true

require("core.keymaps")
require("core.plugins")
