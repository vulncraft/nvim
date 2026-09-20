vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
})
local ts = require("nvim-treesitter")
ts.install({
    "lua",
    "c",
    "cpp",
    "rust",
    "python",
    "bash",
    "toml",
    "yaml",
})
vim.api.nvim_create_autocmd(
    "FileType", {
        callback = function ()
            pcall(vim.treesitter.start)
        end,
    }
)
