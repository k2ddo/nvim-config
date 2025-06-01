local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true,
  severity_sort = true,
})

vim.lsp.enable('cssls')
vim.lsp.config('cssls', {
  capabilities = capabilities,
})

vim.lsp.enable('eslint')
vim.lsp.config('eslint', {
  capabilities = capabilities,
})

vim.lsp.enable('html')
vim.lsp.config('html', {
  capabilities = capabilities,
})

vim.lsp.enable('jsonls')
vim.lsp.config('jsonls', {
  capabilities = capabilities,
})

vim.lsp.enable('pyright')
vim.lsp.config('pyright', {
  capabilities = capabilities,
})

vim.lsp.enable('tailwindcss')
vim.lsp.config('tailwindcss', {
  capabilities = capabilities,
})

vim.lsp.enable('ts_ls')
vim.lsp.config('ts_ls', {
  capabilities = capabilities,
})

