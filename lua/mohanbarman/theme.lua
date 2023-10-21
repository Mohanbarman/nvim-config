require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- -- Lua
-- require("onedark").setup({
-- 	style = "darker",
-- })
-- require("onedark").load()
