-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.encoding = "utf-8"
vim.opt.jumpoptions = "stack,view" -- keep the view consistent when jumping back
vim.opt.incsearch = true -- live show substitutions in the buffer
vim.opt.hlsearch = true -- highlight last search
vim.opt.ignorecase = true -- case insensitive

local undo_dir = vim.fn.stdpath("cache") .. "/undo/"
vim.opt.undodir = undo_dir
vim.opt.undofile = true -- track file changes on disk, so you can undo even after closing the buffer
vim.opt.undolevels = 1000

vim.opt.scrolloff = 3 -- at least 3 lines between top/bottom while scrolling

vim.opt.mouse = "a"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.splitright = true -- new vsplit goes to the right
vim.opt.splitbelow = true -- new hsplt goes to the bottom

vim.opt.number = true

