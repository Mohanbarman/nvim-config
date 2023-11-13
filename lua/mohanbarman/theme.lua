require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    integrations = {
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        navic = true,
        harpoon = true,
        indent_blankline = true
    }
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
vim.cmd('hi normal guibg=NONE')
