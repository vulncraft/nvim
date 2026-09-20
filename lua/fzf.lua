vim.pack.add({"https://github.com/ibhagwan/fzf-lua"})

local fzf = require("fzf-lua")
fzf.setup({})

vim.keymap.set("n", "<leader>sf", fzf.files, {
    desc = "Find files",
})

vim.keymap.set("n", "<leader>sg", fzf.live_grep, {
    desc = "Live grep",
})

vim.keymap.set("n", "<leader>sb", fzf.buffers, {
    desc = "Find buffers",
})

vim.keymap.set("n", "<leader>sh", fzf.manpages, {
    desc = "Help tags",
})
