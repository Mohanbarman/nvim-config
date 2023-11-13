vim.g.mapleader = ","
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true }) -- move the highlighted lines up
vim.keymap.set("n", "J", "mzJ`z", { silent = true }) -- move the highlighted lines down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { silent = true })
vim.keymap.set("n", "N", "Nzzzv", { silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { silent = true })
-- vim.keymap.set({ "n", "v" }, "<leader>F", ":Neoformat<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>dt", require("jester").debug)
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { silent = true }) -- create vertical split
vim.keymap.set("n", "<leader>x", ":ToggleTerm<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })
vim.keymap.set("n", "<leader>W", ":wa<CR>", { silent = true })
vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>", { silent = true })
vim.keymap.set("n", "<leader>tw", ":Twilight<CR>", { silent = true })
vim.keymap.set("n", "<leader>D", ":DogeGenerate<CR>", { silent = true })

-- Git
vim.keymap.set("n", "gp", ":Gitsigns preview_hunk<CR>", { silent = true })
vim.keymap.set("n", "gR", ":Gitsigns reset_hunk<CR>", { silent = true })
vim.keymap.set("n", "gB", ":Gitsigns toggle_current_line_blame<CR>", { silent = true })
vim.keymap.set("n", "]c", ":Gitsigns next_hunk<CR>", { silent = true })
vim.keymap.set("n", "[c", ":Gitsigns prev_hunk<CR>", { silent = true })
