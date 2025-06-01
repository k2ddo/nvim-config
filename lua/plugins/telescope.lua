require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<CR>"] = 'select_tab',
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
}
require('telescope').load_extension('fzf')
