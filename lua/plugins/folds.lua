return {
  name = "folds",
  dir = vim.fn.stdpath("config") .. "/lua/localPlugins/folds",
  lazy = false,
  config = function()
    require("lua.localPlugins.folds.folders")
  end
}
