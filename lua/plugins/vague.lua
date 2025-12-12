return {
  "vague2k/vague.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other plugins
  config = function()
      require 'vague'.setup({
          transparent = true,
          bold = true,
          italic = true,
      })
    vim.cmd("colorscheme vague")
    vim.api.nvim_set_hl(0, "LspInlayHint", {
      fg = "#b5b5b5",
      bg = "#242424",
    })
  end
}

