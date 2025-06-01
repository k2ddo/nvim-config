require("neo-tree").setup({
    default_component_configs = {
        icon = {default = ""},
        file_size = {enabled = false},
        type = {enabled = false},
        last_modified = {enabled = false},
    },
    window = {
        position = "current",
        mappings = {
            ["<CR>"] = "open_tabnew",
        },
    },
    filesystem = {
        filtered_items = {
            visible = true,
            never_show = {
                ".DS_Store",
                ".git",
                "node_modules",
                ".next",
                ".venv",
            }
        }
    }

})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "neo-tree",
  callback = function()
    vim.cmd("f NeoTree")
  end,
})
