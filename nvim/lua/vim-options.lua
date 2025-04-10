vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")
vim.cmd("se cursorline")
vim.g.mapleader = " "
vim.g.have_nerd_font = true
vim.o.termguicolors = true
local keymap = vim.keymap

-- window management
keymap.set("n", "<leader>jh", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically

keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
