vim.pack.add({
    {src = "https://github.com/stevearc/oil.nvim"},
    {src = "https://github.com/nvim-tree/nvim-web-devicons"},
    {src = "https://github.com/nvim-lua/plenary.nvim"},
    {src = "https://github.com/nvim-lualine/lualine.nvim"},
    {src = "https://github.com/stevearc/dressing.nvim"},
    {src = "https://github.com/nvim-telescope/telescope.nvim", tag = "0.1.8"},
    {src = "https://github.com/kevinhwang91/nvim-ufo"},
    {src = "https://github.com/kevinhwang91/promise-async"},
    {src = "https://github.com/nvim-treesitter/nvim-treesitter"},
    {src = "https://github.com/mbbill/undotree"},
    {src = "https://github.com/neovim/nvim-lspconfig"},
    {src = "https://github.com/Saghen/blink.cmp", version = "v1.6.0"},
    {src = "https://github.com/L3MON4D3/LuaSnip"},
    {src = "https://github.com/rafamadriz/friendly-snippets"},
    {src = "https://github.com/mason-org/mason.nvim" },
    {src = "https://github.com/chomosuke/typst-preview.nvim"},
    {src = "https://github.com/rose-pine/neovim"},
    {src = "https://github.com/dangooddd/chosen.nvim"},
    {src = "https://github.com/leath-dub/snipe.nvim"},
    {src = "https://github.com/ThePrimeagen/harpoon", branch = "harpoon2"}
})
require("plugins.config.Oil")
require("plugins.config.lsp")
require("plugins.config.lualine")
require("plugins.config.telescope")
require("plugins.config.ufo-nvim")
require("plugins.config.completion")
require "plugins.config.colorscheme"
require "plugins.config.snipe"
