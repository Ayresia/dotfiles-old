-- Setup nvim-cmp
local cmp = require'cmp'

cmp.setup({
    snippet = {},
    mapping = cmp.mapping.preset.insert({
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
    }
})

-- Setup lspconfig (https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md)
local nvim_lsp = require 'lspconfig'
local cmp_lsp = require 'cmp_nvim_lsp'
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = cmp_lsp.update_capabilities(capabilities)

local servers = { 
    'rust_analyzer',
    'csharp_ls',
    'tsserver',
    'pyright',
    'tailwindcss',
    'jsonls',
    'html',
    'cssls'
}

for _, server in ipairs(servers) do
    nvim_lsp[server].setup { capabilities = capabilities }
end
