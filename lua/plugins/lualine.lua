-- File: ~/.config/nvim/lua/plugins/lualine.lua
return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          section_separators = "",
          component_separators = "",
        },
        sections = {
          lualine_x = {
            {
              function()
                return "🏠 Home"
              end,
              on_click = function()
                vim.cmd("Alpha")
              end,
            },
          },
        },
      })
    end,
  },
}
