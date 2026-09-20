vim.pack.add({"https://github.com/folke/tokyonight.nvim",})
vim.cmd.colorscheme("tokyonight")

-- vim.keymap.set('n', '<leader>sf', function() require('fff').find_files() end, { desc = 'FFFind files' })
-- vim.keymap.set('n', '<leader>sg', function() require('fff').live_grep() end, { desc = 'FFFGrep' })

vim.pack.add({"https://github.com/folke/which-key.nvim"})
require("which-key").setup()


