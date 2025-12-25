return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      local map = vim.keymap.set

      -- Force remove space behavior in visual/select mode (more aggressive)
      map("v", "<Space>", "<Nop>", { silent = true, noremap = true })
      map("x", "<Space>", "<Nop>", { silent = true, noremap = true })
      map("s", "<Space>", "<Nop>", { silent = true, noremap = true })

      -- General
      map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save File" })
      map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit File" })

      -- File Explorer (Neo-tree)
      map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle File Explorer" })
      map("n", "<leader>E", "<cmd>Neotree focus<CR>", { desc = "Focus File Explorer" })

      -- Buffers
      map("n", "<leader>b", "<C-^>", { desc = "Switch to Previous Buffer" })

      -- Dashboard
      map("n", "<leader>h", "<cmd>Alpha<CR>", { desc = "Open Dashboard" })

      -- LSP
      map("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      map("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
    end,
  },
}
