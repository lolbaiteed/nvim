return {
  name = "pversion",
  dir = vim.fn.stdpath("config") .. "/lua/localPlugins/pversion",
  lazy = false,
  cmd = { "ProjectUpdateVersion" },
  config = function()
      require("localPlugins.pversion.core").setup()
  end
}

