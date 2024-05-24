-- setup language servers.
local lspconfig = require('lspconfig')
-- configure pyright
lspconfig.pyright.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        python = {
            analysis = {
                PythonPlatform = "Linux",
                -- typeCheckingMode = "off",
                -- reportGeneralTypeIssues = "none",
                strictListInference = true,
                strictDictionaryInference = true,
                strictSetInference = true,
            },
        },
    },
}

-- rust_analyzer lsp configuration
lspconfig.rust_analyzer.setup {
    -- Server-specific settings. See `:help lspconfig-setup`
    settings = {
        ['rust-analyzer'] = {},
    },
}
