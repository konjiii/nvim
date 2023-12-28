-- setup language servers.
local lspconfig = require('lspconfig')
-- configure pyright
lspconfig.pyright.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
      },
    },
  },
}
