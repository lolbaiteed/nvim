return {
    { "akinsho/toggleterm.nvim",
        config = function ()
            require('toggleterm').setup{
                open_mapping = [[<c-\>]],
                border = 'curved',
                direction = 'float',
            }
        end,
    }
}
