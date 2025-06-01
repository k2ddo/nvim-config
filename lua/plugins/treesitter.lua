require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "css",
        "html",
        "javascript",
        "json",
        "lua",
        "python",
        "scss",
        "sql",
        "tsx",
        "typescript",
    },

    highlight = {
        enable = true,
    },
}
