-- [[ nvim-lspconfig Configuration ]]

-- Use lspconfig plugin
local nvim_lsp = require('lspconfig')

-- Get keybindings from keys config
local keys = require('keys')

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
servers = { 'pyright', 'rust_analyzer' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
