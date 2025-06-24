vim.keymap.set("n", "<leader>fd", "<cmd>Oil<cr>", { desc = "Open file tree", noremap = true })
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Write a file", noremap = true })
vim.keymap.set("n", "<leader><S-w>", "<cmd>w!<cr>", { desc = "Force write", noremap = true })
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { noremap = true, silent = true, desc = "Smart rename" })
vim.keymap.set("n", "<A-k>", "<cmd>move -2<CR>", { noremap = true, desc = "Move line up" })
vim.keymap.set("n", "<A-j>", "<cmd>move +1<CR>", { noremap = true, desc = "Move line down" })
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "The best keymap in universe" })
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Go to definition", noremap = true })
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, { desc = "Code action", noremap = true })
vim.keymap.set("n", "<leader>td", "<cmd>Td<cr>", { desc = "Open TODO list", noremap = true })

--- Folders ---
local ufo = require("ufo")
vim.keymap.set("n", "zv", function() ufo.peekFoldedLinesUnderCursor()
    if not winid then
        vim.lsp.buf.hover()
    end end, { desc = "Peek folded lines", noremap = true })
vim.keymap.set("n", "zc", ufo.closeAllFolds, { desc = "Close all folds", noremap = true })
vim.keymap.set("n", "ze", ufo.openAllFolds, { desc = "Open all folds", noremap = true })


--- Telescope ---
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files', noremap = true })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep', noremap = true })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags', noremap = true })
