return require("lazy").setup({
	-- Telescope fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},

	{ "navarasu/onedark.nvim" },
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	},
	{ "ThePrimeagen/harpoon" },
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive" },
	{
		"williamboman/mason.nvim",
		build = function()
			pcall(vim.cmd, "MasonUpdate")
		end,
	},
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "L3MON4D3/LuaSnip" },
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
	},
	{ "lewis6991/gitsigns.nvim" },
	{ "windwp/nvim-autopairs" },
	{ "numToStr/Comment.nvim" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	},
	{ "mfussenegger/nvim-dap" },
	{ "mxsdev/nvim-dap-vscode-js" },
	{
		"microsoft/vscode-js-debug",
		lazy = true,
		version = "v1.80.0",
		build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	},
	{ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } },
	{ "folke/neodev.nvim" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "SmiteshP/nvim-navic" },
	{
		"ckipp01/stylua-nvim",
		config = function()
			require("stylua-nvim").setup({ config_file = "stylua.toml" })
		end,
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	{ "David-Kunz/jester" },
	{ "simrat39/rust-tools.nvim" }, -- Rust LSP
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "nvim-tree/nvim-web-devicons" },
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	},
	{ "windwp/nvim-ts-autotag" },
	{ "stevearc/dressing.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "stevearc/oil.nvim" },
	{ "folke/twilight.nvim" },
	{ "tpope/vim-dadbod" },
	{ "stevearc/conform.nvim" },
	{ "leoluz/nvim-dap-go" },
	{ "ofirgall/goto-breakpoints.nvim" },
	{ "stevearc/aerial.nvim" },
	-- { "arkav/lualine-lsp-progress" },
	{ "ldelossa/nvim-dap-projects" },
	{ "rmagatti/goto-preview" },
  { "mfussenegger/nvim-dap-python" }
	-- { name = "g-worktree", dir = "/Users/mohan/Dev/g-worktree.nvim" },
})
