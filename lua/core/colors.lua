vim.opt.termguicolors = true

function SetColor(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = '#ff0000' })
    vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { fg = '#ff0000' })
end

SetColor()
