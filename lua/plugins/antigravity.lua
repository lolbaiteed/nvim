return {
  "lolbaiteed/antigravity.nvim", -- Or local path directory
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-treesitter/nvim-treesitter", -- For syntax highlighting inside chat
  },
  config = function()
    require("antigravity").setup({
      keymaps = {
        toggle = "<leader>ac",
      }
    })
  end
}
