require("blink.cmp").setup({
    signature = { enabled = true },
    keymap = { preset = 'default' },
    completion = { documentation = { auto_show = true, auto_show_delay_ms = 500} },
    fuzzy = { implementation = "prefer_rust_with_warning" }
})

require("luasnip.loaders.from_vscode").lazy_load()
