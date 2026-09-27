vim.pack.add({"https://github.com/folke/which-key.nvim"})
local wk = require("which-key")

wk.setup({
    preset = "modern",
})

wk.add({
    {"<leader>s", group="search"},
    {"<leader>d", group="debug"},
    {"<leader>g", group="git"},
})

