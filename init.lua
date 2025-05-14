require("config.lazy")
require("config.Keybinds")
vim.cmd[[colorscheme rose-pine-moon]]

--Transparancy stuff (Need to copltete) --
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn',{ link = "DiagnosticWarn" })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError',{ link = "DiagnosticError" })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo',{ link = "DiagnosticInfo" })

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
