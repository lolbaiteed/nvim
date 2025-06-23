return {
    name = "term",
    dir = vim.fn.stdpath("config") .. "/lua/localPlugins/term",
    lazy = false,
    cmd = { "TermOpen" },
    config = function()
        require("localPlugins.term.customterm")
    end
}
