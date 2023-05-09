local dap = require("dap")
local widgets = require("dap.ui.widgets")

vim.keymap.set("n", "<leader>dc", function()
	dap.continue()
end)
vim.keymap.set("n", "<leader>dn", function()
	dap.step_over()
end)
vim.keymap.set("n", "<leader>di", function()
	dap.step_into()
end)
vim.keymap.set("n", "<leader>do", function()
	dap.step_out()
end)
vim.keymap.set("n", "<leader>db", function()
	dap.toggle_breakpoint()
end)
vim.keymap.set("n", "<leader>dB", function()
	dap.set_breakpoint()
end)
--vim.keymap.set('n', '<leader>dlp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set("n", "<leader>dr", function()
	dap.repl.open()
end)
vim.keymap.set("n", "<leader>dl", function()
	dap.clear_breakpoints()
end)
--vim.keymap.set('n', '<leader>dl', function() dap.run_last() end)

vim.keymap.set("n", "<leader>dh", function()
	widgets.hover()
end)
vim.keymap.set("n", "<leader>dp", function()
	widgets.preview()
end)
vim.keymap.set("n", "<leader>df", function()
	widgets.centered_float(widgets.frames)
end)
vim.keymap.set("n", "<leader>ds", function()
	widgets.centered_float(widgets.scopes)
end)

require("dap-vscode-js").setup({
	-- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
	-- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
	-- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
	adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
	-- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
	-- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
	-- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

for _, language in ipairs({ "typescript", "javascript" }) do
	dap.configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = "${workspaceFolder}",
			skipFiles = { "<node_internals>/**", "node_modules/**" },
		},
		{
			type = "pwa-node",
			request = "attach",
			name = "Attach",
			processId = require("dap.utils").pick_process,
			cwd = "${workspaceFolder}",
			skipFiles = { "<node_internals>/**", "node_modules/**" },
		},
		{
			type = "pwa-node",
			request = "launch",
			name = "Debug NestJS",
			program = "${workspaceFolder}/node_modules/@nestjs/cli/bin/nest.js",
			args = { "start", "--watch" },
			cwd = "${workspaceFolder}",
			skipFiles = { "<node_internals>/**", "node_modules/**" },
		},
	}
end

-- debug jest tests
require("jester").setup({
	dap = {
		console = "externalTerminal",
		type = "pwa-node",
	},
})

vim.keymap.set("n", "<leader>dt", function()
  require("jester").debug()
end)
