return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup({
      -- Your config here
      transparent_background_level = 2,
      diagnostic_text_highlight = true,
      italics = true,
      inlay_hints_background = "none",
      float_style = "dark",
      ui_contrast = "low",
    })
    vim.cmd([[ colorscheme everforest ]])
  end,
}
