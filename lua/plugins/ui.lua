return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = {
            normal = {
              a = { fg = "#333333", bg = "#DE7356", gui = "bold" },
              b = { fg = "#DE7356", bg = "#333333" },
              c = { fg = "#DE7356", bg = "#333333" },
            },
            insert = {
              a = { fg = "#333333", bg = "#DE7356", gui = "bold" },
              b = { fg = "#DE7356", bg = "#333333" },
              c = { fg = "#DE7356", bg = "#333333" },
            },
            visual = {
              a = { fg = "#333333", bg = "#DE7356", gui = "bold" },
              b = { fg = "#DE7356", bg = "#333333" },
              c = { fg = "#DE7356", bg = "#333333" },
            },
            replace = {
              a = { fg = "#333333", bg = "#DE7356", gui = "bold" },
              b = { fg = "#DE7356", bg = "#333333" },
              c = { fg = "#DE7356", bg = "#333333" },
            },
            command = {
              a = { fg = "#333333", bg = "#DE7356", gui = "bold" },
              b = { fg = "#DE7356", bg = "#333333" },
              c = { fg = "#DE7356", bg = "#333333" },
            },
            inactive = {
              a = { fg = "#DE7356", bg = "#333333" },
              b = { fg = "#DE7356", bg = "#333333" },
              c = { fg = "#DE7356", bg = "#333333" },
            },
          },
        },
      })
    end,
  },
  {
    "kyazdani42/nvim-web-devicons",
    lazy = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup()
    end,
  },
}
