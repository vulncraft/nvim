vim.pack.add({"https://github.com/nvim-lua/plenary.nvim"})

vim.pack.add({"https://github.com/folke/tokyonight.nvim","https://github.com/bluz71/vim-moonfly-colors","https://github.com/scottmckendry/cyberdream.nvim" })

if vim.g.mergetool_mode then 
    vim.cmd.colorscheme("industry")
else
    vim.cmd.colorscheme("tokyonight")
end

-- vim.keymap.set('n', '<leader>sf', function() require('fff').find_files() end, { desc = 'FFFind files' })
-- vim.keymap.set('n', '<leader>sg', function() require('fff').live_grep() end, { desc = 'FFFGrep' })



