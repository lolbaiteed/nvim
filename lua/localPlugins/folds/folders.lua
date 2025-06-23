-- zc = close all , za toggle current , ze = expand all

vim.o.foldenable = true
vim.o.foldlevel = 99
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldtext = ""
vim.opt.foldcolumn = "1"
vim.opt.fillchars:append({
  fold = " ",
  foldopen = "▼",  -- Down arrow for open folds
  foldclose = "▶", -- Right arrow for closed folds
  foldsep = " "    -- Optional: Space between folds
})
