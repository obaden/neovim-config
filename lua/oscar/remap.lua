vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- replace word with current register
vim.keymap.set("n", "<leader>p", [["_diwP]])
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- toggle file tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle=true<CR>")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
