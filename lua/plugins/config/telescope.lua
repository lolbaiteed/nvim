require('telescope').setup({
        defaults = {
            borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            mappings = {
                i = {
                    ["<C-u>"] = false
                },
            },
        },
        pickers = {
            find_files = {
                layout_stategy = 'vertical',
                layout_config = {
                    prompt_position = 'top',
                    height = 0.5,
                    width = 0.2,
                },
                sorting_strategy = 'ascending',
                previewer = false,
            },
        },
    })
