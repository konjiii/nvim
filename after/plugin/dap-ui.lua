local dap, dapui = require("dap"), require("dapui")
dapui.setup()

-- adapter definition
dap.adapters.cppdbg = {
	id = "cppdbg",
	type = "executable",
	command = "/home/konji/.local/share/nvim/mason/bin/OpenDebugAD7",
}

-- configuration per language
dap.configurations.c = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopAtEntry = true,
	},
	-- {
	-- 	name = "Attach to gdbserver :1234",
	-- 	type = "cppdbg",
	-- 	request = "launch",
	-- 	MIMode = "gdb",
	-- 	miDebuggerServerAddress = "localhost:1234",
	-- 	miDebuggerPath = "/usr/bin/gdb",
	-- 	cwd = "${workspaceFolder}",
	-- 	program = function()
	-- 		return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
	-- 	end,
	-- },
}

-- dap keymaps
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>dap", dap.continue)

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end
