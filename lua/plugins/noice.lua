return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    lsp = {
      signature = {
        enabled = false,
      },
    },
    presets = {
      bottom_search = true,         -- command-line at the bottom like classic Vim
      command_palette = true,       -- like VSCode command palette
      long_message_to_split = true, -- long messages go to split
      inc_rename = false,
      lsp_doc_border = true,
    },
  },
}

