-- setup language servers.
local lspconfig = require("lspconfig")
-- configure pyright
lspconfig.pyright.setup({
	settings = {
		python = {
			analysis = {
				PythonPlatform = "Linux",
				-- typeCheckingMode = "off",
				-- reportGeneralTypeIssues = "none",
				strictListInference = true,
				strictDictionaryInference = true,
				strictSetInference = true,
				autoImportCompletions = true,
				autoSearchPaths = true,
				diagnosticMode = "workspace", -- or "openFilesOnly"
				typeCheckingMode = "basic", -- or "off", "basic", "strict"
				useLibraryCodeForTypes = true,
			},
		},
	},
	single_file_support = false, -- Set this to false to disable single file mode
})

-- rust_analyzer lsp configuration
lspconfig.rust_analyzer.setup({
	-- Server-specific settings. See `:help lspconfig-setup`
	settings = {
		["rust-analyzer"] = {},
	},
})
