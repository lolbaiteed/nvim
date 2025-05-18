return {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    config = function ()
        vim.o.foldcolumn = '5'
        vim.o.foldlevel = 99
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true

        vim.keymap.set('n', 'ze', require('ufo').openAllFolds, { desc = "Open all folds", noremap = true })
        vim.keymap.set('n', 'zca', require('ufo').closeAllFolds, { desc = "Close all folds", noremap = true })
        vim.keymap.set('n', 'zv', function ()
            local winid = require('ufo').peekFoldedLinesUnderCursor()
            if not winid then
                vim.lsp.buf.hover()
            end
        end, { desc = "Peek fold", noremap = true })

        require('ufo').setup{
           provider_selector = function (bufnr, filetype, buftype)
                return { 'lsp', 'indent' }
            end
        }
    end
}
