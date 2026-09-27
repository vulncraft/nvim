vim.pack.add({"https://github.com/lewis6991/gitsigns.nvim"})
require("gitsigns")

vim.pack.add({ "https://github.com/neogitorg/neogit", "https://github.com/sindrets/diffview.nvim" , "https://github.com/esmuellert/codediff.nvim"})
local neogit = require("neogit")
require("diffview").setup({
    view = {
        merge_tool = {
            layout = "diff3_mixed",
            winbar_info = "true",
        },
    },
})
require("codediff").setup()

neogit.setup({
    integrations = {
        fzf_lua = true,
        diffview = true,
    }
})

vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", {
    desc = "Open Neogit UI",
})
vim.keymap.set("n", "<leader>gd", "<cmd>CodeDiff<cr>", {
    desc = "Open CodeDiff UI",
})
