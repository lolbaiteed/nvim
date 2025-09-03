require "snipe".setup({
    navigate = {
        leader = "ctrl",
    },
    hints = {
        dictionary = "1234567890",
    },
    ui = {
        position = "center",
    },
})
vim.keymap.set("n", "gb", require "snipe".open_buffer_menu)
