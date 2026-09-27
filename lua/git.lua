vim.pack.add({"https://github.com/lewis6991/gitsigns.nvim"})
require("gitsigns")

vim.pack.add({ "https://github.com/neogitorg/neogit" })
local neogit = require("neogit")

neogit.setup({
    integrations = {
        fzf_lua = true,
    }
})

vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", {
    desc = "Open Neogit UI",
})
