return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = '1.*',

  opts = {
    snippets = {
      preset = 'luasnip',
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer'},
    },
    signature = { enabled = true },
    keymap = {
      preset = 'default',
      ['<Tab>'] = { 'accept', 'fallback' }
    },
    completion = { documentation = { auto_show = true, auto_show_delay_ms = 500 } },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
}
