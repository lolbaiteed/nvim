vim.pack.add({
    {src = "https://github.com/catppuccin/nvim"}
})

opts = {
    transparent_background = true,
    integrations = {
        telescope = true,
        lualine = true,
        cmp = true,
    }
}

require("catppuccin").setup(opts)
vim.cmd.colorscheme 'catppuccin-frappe'
