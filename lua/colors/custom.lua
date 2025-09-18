-- ~/.config/nvim/lua/colors/maidtheme.lua
-- Custom Neovim colorscheme inspired by your wallpaper 💙🖤🤍

local colors = {
  bg       = "#1e1f23",
  fg       = "#dcdcdc",
  accent   = "#7aa2f7", -- eye blue
  white    = "#f5f5f5", -- ruffles
  comment  = "#6e6e6e", -- muted gray
  blush    = "#f29ca3", -- subtle pink
  yellow   = "#e0af68",
  red      = "#ff6c6b",
  green    = "#9ece6a",
  cyan     = "#7dcfff",
  purple   = "#bb9af7",
}

vim.cmd("highlight clear")
vim.o.background = "dark"
vim.o.termguicolors = true

-- UI
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = "#22232a" })
vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2b31" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.accent, bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.comment })
vim.api.nvim_set_hl(0, "Visual", { bg = "#3a3c45" })
vim.api.nvim_set_hl(0, "Search", { fg = colors.bg, bg = colors.accent, bold = true })
vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.blush, bold = true })
vim.api.nvim_set_hl(0, "MatchParen", { fg = colors.accent, bold = true })
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = "#2b2d34" })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.bg, bg = colors.accent })

-- Syntax (Treesitter)
vim.api.nvim_set_hl(0, "Identifier", { fg = colors.fg })
vim.api.nvim_set_hl(0, "Function", { fg = colors.white, bold = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.accent, bold = true })
vim.api.nvim_set_hl(0, "Type", { fg = colors.purple })
vim.api.nvim_set_hl(0, "String", { fg = colors.blush })
vim.api.nvim_set_hl(0, "Number", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Constant", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Statement", { fg = colors.accent })
vim.api.nvim_set_hl(0, "PreProc", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Special", { fg = colors.green })
vim.api.nvim_set_hl(0, "Todo", { fg = colors.blush, bold = true })

-- Diagnostics (LSP)
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.accent })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.green })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.accent })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.green })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.comment })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.accent })
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = colors.bg, bg = colors.accent, bold = true })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = colors.bg, bg = colors.comment, bold = true })
vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = colors.white, bg = "#2f3139", bold = true })

-- Git signs
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })

-- Statusline / Tabline (basic)
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = "#2b2d34" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.comment, bg = "#1e1f23" })
vim.api.nvim_set_hl(0, "TabLine", { fg = colors.comment, bg = "#2b2d34" })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = colors.accent, bg = "#1e1f23", bold = true })

