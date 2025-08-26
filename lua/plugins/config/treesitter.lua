require('nvim-treesitter.configs').setup ({
        ensure_installed = { "c", "zig", "javascript", "vim", "vimdoc", "lua" },
        sync_install = false,
        auto_install = false,
        highlight = {
            enable = true,
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<leader>ss",
                node_incremental = "<leader>ni",
                scope_incremental = "<leader>si",
                node_decremental = "<leader>nd",
            },
        },
    })
