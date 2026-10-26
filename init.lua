-- Neovim 0.12+ configuration using the built-in vim.pack package manager.
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

require("config.options")
require("config.plugins")
require("config.keymaps")
require("config.lsp")

