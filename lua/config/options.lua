local opt = vim.opt

opt.sessionoptions = {
    "buffers",
    "curdir",
    "folds",
    "globals",
    "help",
    "tabpages",
    "winsize",
}

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.cursorline = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.foldcolumn = "1"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
opt.fillchars = {
  eob = " ",
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldinner = " ",
  foldclose = "",
}
opt.statuscolumn = "%C  %s%=%l "
opt.updatetime = 250
opt.timeoutlen = 400
opt.splitright = true
opt.splitbelow = true
opt.undofile = true

-- Match the transparent background from the Nixvim config.
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     local groups = {
--       "Normal", "NormalNC", "SignColumn", "EndOfBuffer",
--       "NormalFloat", "FloatBorder",
--     }
--     for _, group in ipairs(groups) do
--       vim.api.nvim_set_hl(0, group, { bg = "none" })
--     end
--   end,
-- })

vim.diagnostic.config({
  virtual_lines = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
