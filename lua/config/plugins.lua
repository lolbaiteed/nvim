-- vim.pack is built into Neovim 0.12+. No third-party plugin manager needed.
-- Plugin dependencies are listed explicitly because vim.pack does not resolve them.
vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/sainnhe/gruvbox-material" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2" },
	{ src = "https://github.com/mbbill/undotree" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/m4xshen/autoclose.nvim" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/Saghen/blink.cmp", version = "v1" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "master" },
	{ src = "https://github.com/kevinhwang91/nvim-ufo" },
	{ src = "https://github.com/kevinhwang91/promise-async" },
	{ src = "https://github.com/iamcco/markdown-preview.nvim" },
	{ src = "https://github.com/GustavEikaas/easy-dotnet.nvim" },
	{ src = "https://github.com/folke/persistence.nvim" },
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/folke/todo-comments.nvim" },
})

-- Gruvbox Material
vim.g.gruvbox_material_background = "soft"
vim.g.gruvbox_material_transparent_background = 2
vim.g.gruvbox_material_enable_italic = true
vim.cmd.colorscheme("gruvbox-material")

require("nvim-web-devicons").setup({})
require("lualine").setup({
	options = {
		theme = "gruvbox-material",
		globalstatus = true,
		section_separators = "",
		component_separators = "",
	},
})
require("oil").setup({})
require("telescope").setup({})
require("harpoon"):setup()
require("autoclose").setup({})
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"go",
		"html",
		"javascript",
		"json",
		"lua",
		"markdown",
		"markdown_inline",
		"nix",
		"tsx",
		"typescript",
		"vue",
		"yaml",
	},
	highlight = { enable = true },
	indent = { enable = true },
})

require("mason").setup({
	ui = {
		border = "rounded",
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	automatic_enable = true,
})

require("blink.cmp").setup({
	keymap = { preset = "super-tab" },
	snippets = { preset = "default" },
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
})

require("ufo").setup({
	provider_selector = function()
		return { "lsp", "indent" }
	end,
})

require("persistence").setup({
	dir = vim.fn.stdpath("state") .. "/sessions/",
	need = 1,
	branch = true,
})

-- Install markdown-preview's Node dependencies once with:
--   nvim --headless "+Lazy! sync" +qa  (not applicable to vim.pack)
-- Instead run :!cd <plugin-dir>/app && npm install, or see README.md.

-- EasyDotnet setup is intentionally conservative: its options can be customized
-- for the installed .NET SDK/workflow.
require("easy-dotnet").setup({})

require("toggleterm").setup({
	open_mapping = [[<c-`>]],
})

require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		typescript = { "prettier" },
		vue = { "prettier" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

require("todo-comments").setup({})
