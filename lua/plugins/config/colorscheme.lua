require "rose-pine".setup({
    variant = "moon",
    dark_variant = "moon",
    extend_background_behind_borders = true,
        enable = {
        terminal = true,
    },
        styles = {
        bold = true,
        italic = true,
        transparency = true,
    }
})

vim.cmd.colorscheme("rose-pine")
