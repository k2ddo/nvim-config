vim.g.mapleader = " "

-- Tabs
vim.keymap.set('n', '<Tab>', ':tabnext<CR>')
vim.keymap.set('n', '<s-Tab>', ':tabprevious<CR>')


-- Close tab/vim
vim.keymap.set('n', '<leader>x', ':q<CR>')
vim.keymap.set('n', '<leader>q', ':qa<CR>')


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })


-- LSP
vim.keymap.set('n', '<leader>h', vim.diagnostic.open_float)
