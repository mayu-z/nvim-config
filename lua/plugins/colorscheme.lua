-- For Neovim with Lazy.nvim plugin manager
-- Add this to your ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  -- Gruvbox theme (most likely match)
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
  
  -- Alternative: Tokyo Night (red variant)
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = false,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
        },
        sidebars = { "qf", "help" },
        day_brightness = 0.3,
        hide_inactive_statusline = false,
        dim_inactive = true,
        lualine_bold = false,
      })
      -- Uncomment to use Tokyo Night instead
      -- vim.cmd("colorscheme tokyonight-night")
    end,
  },
}

-- If you're using init.vim instead of Lua config:
-- Add these lines to your ~/.config/nvim/init.vim

-- Using vim-plug plugin manager:
-- Plug 'ellisonleao/gruvbox.nvim'
-- Plug 'rktjmp/lush.nvim' " required for gruvbox.nvim

-- Then add:
-- set background=dark
-- colorscheme gruvbox

-- Or for Packer.nvim users, add to your plugins:
-- use {
--   "ellisonleao/gruvbox.nvim",
--   config = function()
--     vim.o.background = "dark"
--     vim.cmd("colorscheme gruvbox")
--   end
-- }
