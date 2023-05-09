vim.g.mapleader = ","
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "tt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "tf", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "tc", ":NvimTreeCollapse<CR>")

vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set("n", "<leader>F", ":FormatWrite<CR>")
vim.keymap.set("n", "<leader>dt", require("jester").debug)
