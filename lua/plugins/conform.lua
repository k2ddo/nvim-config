require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    css = { "prettierd" },
    html = { "prettierd" },
    json = { "prettierd" },
    markdown = { "prettierd" },
    python = { "ruff_fix", "ruff_format", "ruff_organize_imports" }
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
