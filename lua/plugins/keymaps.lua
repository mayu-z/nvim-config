local map = vim.keymap.set

-- General
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save File" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit File" })

-- Buffers
map("n", "<leader>b", "<C-^>", { desc = "Switch to Previous Buffer" })

-- Dashboard
map("n", "<leader>h", "<cmd>Alpha<CR>", { desc = "Open Dashboard" })

-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })

