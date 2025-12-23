return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        float = {
          enable = true,
          open_win_config = function()
            local width = math.floor(vim.o.columns * 0.7)
            local height = math.floor(vim.o.lines * 0.7)
            return {
              border = "rounded", -- border type
              relative = "editor",
              row = (vim.o.lines - height) / 2,
              col = (vim.o.columns - width) / 2,
              width = width,
              height = height,
            }
          end,
        },
        width = function()
          return math.floor(vim.o.columns * 0.7)
        end,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
    })

    -- Light red border for floating window
    vim.cmd([[highlight FloatBorder guifg=#ff6b6b guibg=NONE]])

    -- Keymap to toggle NvimTree
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
  end,
}
