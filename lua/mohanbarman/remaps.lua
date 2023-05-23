vim.g.mapleader = ","
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move the highlighted lines up
vim.keymap.set("n", "J", "mzJ`z") -- move the highlighted lines down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>F", ":Neoformat<CR>")
vim.keymap.set("n", "<leader>dt", require("jester").debug)
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>") -- create vertical split
vim.keymap.set("n", "<leader>sh", ":split<CR>") -- create horizontal split
vim.keymap.set("n", "<leader>x", ":ToggleTerm<CR>")
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>")

