return {
  "akinsho/bufferline.nvim", -- The plugin that shows buffer tabs at the top
  version = "*", -- Use the latest version
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- For filetype icons on the tabs
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- Show buffers (not actual vim tabs)
        diagnostics = "nvim_lsp", -- Show LSP diagnostics on the tab (like errors/warnings)
        show_buffer_close_icons = true, -- Show the X icon on each tab to close it
        show_close_icon = false, -- Hide the close icon on the far right (optional)
        separator_style = "slant", -- Separator style: "slant", "thick", "thin", etc.
        always_show_bufferline = true, -- Always show the tab bar even with one buffer
        offsets = {
          {
            filetype = "NvimTree", -- If using NvimTree, reserve space for it
            text = "File Explorer", -- Label next to NvimTree
            highlight = "Directory", -- Highlight group for the label
            text_align = "left",
          },
        },
      },
    })

    -- Keymaps 🗝️

    -- Move to the next buffer (like next tab)
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })

    -- Move to the previous buffer (like previous tab)
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })

    -- Close the current buffer (like clicking the X on the tab)
    vim.keymap.set("n", "<leader>c", "<cmd>bdelete<CR>", { desc = "Close buffer" })
  end,
}

