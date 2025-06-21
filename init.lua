require("config.lazy")
require("config.Keybinds")

-- Clipboard --
vim.api.nvim_set_option("clipboard","unnamedplus")

-- netrw config --
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_alto = 0

-- Just to calm down --
vim.opt.colorcolumn = "80"
