vim.keymap.set("n", "<leader>gs", ":vertical G<CR>")
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>")
vim.keymap.set("n", "<leader>gc", ":Telescope git_commits<CR>")
vim.keymap.set("n", "<leader>gp", ":G push<CR>") -- git push
vim.keymap.set("n", "<leader>gh", ":0GcLog!<CR>") -- open file history
vim.keymap.set("n", "]q", ":cnext<CR>")
vim.keymap.set("n", "[q", ":cprev<CR>")
