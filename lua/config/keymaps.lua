local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<C-s>", "<cmd>write<CR>", opts)
map("i", "<C-s>", "<Esc><cmd>write<CR>", opts)

-- Harpoon 2
map("n", "<leader>a", function()
  require("harpoon"):list():add()
end, { desc = "Harpoon: add file" })

map("n", "<C-e>", function()
  local harpoon = require("harpoon")
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon: quick menu" })

for i = 1, 4 do
  map("n", "<A-" .. i .. ">", function()
    require("harpoon"):list():select(i)
  end, { desc = "Harpoon: select file " .. i })
end

map("n", "<leader>fd", "<cmd>Oil<CR>", { desc = "Open file explorer" })
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
map("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Toggle undo tree" })

map("n", "<leader>lf", function()
  vim.lsp.buf.format()
end, { desc = "Format buffer" })

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Line diagnostics" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

map("n", "<A-j>", "<cmd>move +1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>move -2<CR>==", { desc = "Move line up" })
map("i", "<A-j>", "<Esc><cmd>move +1<CR>==gi", { desc = "Move line down" })
map("i", "<A-k>", "<Esc><cmd>move -2<CR>==gi", { desc = "Move line up" })

-- Go: insert a common error check. Adjust the log call to your project style.
map("n", "<leader>ef",
  'oif err != nil {<CR>}<Esc>Olog.Fatalf("error: %s\\n", err.Error())<Esc>jj',
  { desc = "Insert Go error check" })

local persistence = require("persistence")

map("n", "<leader>qs", function()
    persistence.load()
end, { desc = "Restore session" })

map("n", "<leader>qS", function()
    persistence.select()
end, { desc = "Select session" })

map("n", "<leader>ql", function()
    persistence.load({ last = true })
end, { desc = "Restore last session" })

map("n", "<leader>qd", function()
    persistence.stop()
end, { desc = "Stop session saving" })
