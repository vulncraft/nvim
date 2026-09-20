vim.pack.add({ "https://github.com/saghen/blink.lib" })
vim.pack.add({ "https://github.com/Saghen/blink.cmp"})
require('blink.cmp').build():pwait()
require("blink.cmp").setup({
    keymap = {
        preset = "default",
    },

    appearance = {
        nerd_font_variant = "mono",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 500,
        },
    },

    sources = {
        default = {
            "lsp",
            "path",
            "snippets",
            "buffer",
        },
    },
})
