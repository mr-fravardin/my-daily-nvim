-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities2 = require('cmp_nvim_lsp').default_capabilities()

-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
-- enable snippets
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
    capabilities = capabilities,
}
require'lspconfig'.html.setup {
    capabilities = capabilities,
}
require'lspconfig'.jsonls.setup {
    capabilities = capabilities,
}
require'lspconfig'.eslint.setup{
    capabilities = capabilities,
}
require'lspconfig'.pyright.setup{
    capabilities = capabilities2,
}

