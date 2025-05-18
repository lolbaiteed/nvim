vim.keymap.set("n", "<leader>fd", "<cmd>Ex<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")
vim.keymap.set("n", "<leader><S-q>", "<cmd>q!<cr>")
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>")
vim.keymap.set("n", "<leader><S-w>", "<cmd>w!<cr>")
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "<cmd>move -2<CR>", { noremap = true })
vim.keymap.set("n", "<A-j>", "<cmd>move +1<CR>", { noremap = true })


--- Telescope ---
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
