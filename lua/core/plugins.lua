local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  -- Autosave
  {"Pocco81/auto-save.nvim"},

  -- Autocomplete
  {"hrsh7th/nvim-cmp"},
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/cmp-nvim-lsp-signature-help"},
  {"hrsh7th/vim-vsnip"},

  -- Comments
  {"terrortylor/nvim-comment"},

  -- Formatters
  {"stevearc/conform.nvim"},

  -- LSP
  {"neovim/nvim-lspconfig"},

  -- NeoTree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {"nvim-telescope/telescope-fzf-native.nvim", build = "make" },

  -- Treesitter
  {"nvim-treesitter/nvim-treesitter"},

  -- Gitsigns
  {"lewis6991/gitsigns.nvim"},

  -- Themes
  {"folke/tokyonight.nvim"},
})
