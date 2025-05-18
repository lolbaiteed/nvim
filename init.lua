require("config.lazy")
require("config.Keybinds")

-- Clipboard --
vim.api.nvim_set_option("clipboard","unnamedplus")

-- Fold stuff (mb not woking)
vim.opt.foldlevel=99
vim.opt.foldmethod=expr

vim.diagnostic.config({ virtual_text = true })

-- netrw config --
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_alto = 0
