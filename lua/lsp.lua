vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })
vim.lsp.enable({
    "lua_ls",
    "clangd",
    "rust_analyzer",
})
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local function map(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, {
                buffer = args.buf,
                desc = desc,
            })
        end
        map("grd", vim.lsp.buf.definition, "Go to definition")
        map("K", vim.lsp.buf.hover, "Hover info")

        map("grF", vim.lsp.buf.format, "LSP format")
    end,
})
