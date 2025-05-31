vim.keymap.set("n", "<leader>h", "<cmd>Alpha<CR>", { desc = "Go to Dashboard" })

local map = vim.keymap.set

-- General keymaps
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save File" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit File" })

-- LSP-related
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })

-- Alpha dashboard shortcut
map("n", "<leader>h", "<cmd>Alpha<CR>", { desc = "Open Dashboard" })

map("n", "<leader>b", "<C-^>", { desc = "Switch to previous buffer" })
