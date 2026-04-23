-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
      { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Grep Word Under Cursor" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          file_ignore_patterns = { "node_modules", ".git/", "dist/", "__pycache__", ".venv" },
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              preview_width = 0.55,
              results_width = 0.45,
            },
            width = 0.9,
            height = 0.85,
          },
        },
        pickers = {
          find_files = {
            hidden = true,
          },
          live_grep = {
            additional_args = function()
              return { "--hidden" }
            end,
          },
        },
      })
    end,
  },
}
