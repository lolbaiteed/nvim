require "chosen".setup({
    keymap = {
        -- Reset mode or exit
        revert = "<Esc>",
        -- Save / delete current file
        save = "c",
        -- Toggle delete mode
        delete = "d",
        -- Toggle swap mode
        swap = "s",
        -- Toggle split mode
        split = "<C-s>",
        -- Toggle vsplit mode
        vsplit = "<C-v>",
        -- Write Chosen index file on filesystem
        write = "w",
    },
})

