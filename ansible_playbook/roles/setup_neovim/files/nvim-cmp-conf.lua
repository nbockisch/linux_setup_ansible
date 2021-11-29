-- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require('lspkind') -- For fancy icons

cmp.setup({
  formatting = {
    format = lspkind.cmp_format({with_text = false, maxwidth = 50})
  },

  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
  	vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
  }, {
    { name = 'buffer' },
  })
  })
  
  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
  })
  
  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Use the server list from the nvim-lspconfig conf file
local lspconf = require('plug-confs.nvim-lspconfig-conf')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Use a loop to conveniently call 'setup' on multiple servers and
-- set capabilities for each
for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    capabilities = capabilities
  }
end
