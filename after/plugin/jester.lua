-- debug jest tests
require("jester").setup({
  terminal_cmd = ":vsplit | terminal", -- used to spawn a terminal for running tests, for debugging refer to nvim-dap's config
	dap = {
		console = "integratedTerminal",
		type = "pwa-node",
	},
})
