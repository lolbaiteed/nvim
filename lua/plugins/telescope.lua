return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
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
                        width = 0.3,
                    },
                    sorting_strategy = 'ascending',
                    previewer = false,
                },
                man_pages = {
                  sections = {
                    "2", "3",
                  },
                },
            },
        })
      end
    }
