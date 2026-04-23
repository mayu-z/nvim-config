return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      
      -- Your Björk ghost ASCII art
      dashboard.section.header.val = {
        [[                                    ██████                                    ]],
        [[                                ████▒▒▒▒▒▒████                                ]],
        [[                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ]],
        [[                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ]],
        [[                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ]],
        [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ]],
        [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ]],
        [[                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ]],
        [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
        [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
        [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
        [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
        [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
        [[                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ]],
        [[                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ]],
        [[                        ██      ██      ████      ████                        ]],
      }

      -- Set the header color to a lighter shade
      dashboard.section.header.opts.hl = "AlphaHeader"

      -- Custom accent text section
      local custom_text = {
        type = "text",
        val = "   ● Welcome to Mayu's Nvim  ",
        opts = {
          position = "center",
          hl = "AlphaAccent",
        },
      }

      -- Footer with date and plugin count
      local plugins = require("lazy").stats().count
      dashboard.section.footer.val = {
        "   󰃭  Today is " .. os.date("%a %d %b") .. "  ",
        "   󰏖  " .. plugins .. " plugins in total  ",
      }
      dashboard.section.footer.opts.hl = "AlphaFooter"

      -- Menu buttons with proper alignment
      dashboard.section.buttons.val = {
        dashboard.button("h", "󰇚   Recents     LDR h", ":Telescope oldfiles<CR>"),
        dashboard.button("b", "󰑻   Buffers     LDR b", ":Telescope buffers<CR>"),
        dashboard.button("v", "󰄕   Explore     LDR v", ":Telescope file_browser<CR>"),
        dashboard.button("/", "󰫔   Search      LDR /", ":Telescope find_files<CR>"),
        dashboard.button("V", "󰙪   Options     MRK V", ":e $MYVIMRC<CR>"),
        dashboard.button("P", "󰄑   Plugins     MRK P", ":Lazy<CR>"),
      }

      -- Set button alignment to center
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.shortcut = ""
        button.opts.width = 0
        button.opts.align_shortcut = "right"
      end

      -- Layout
      dashboard.config.layout = {
        { type = "padding", val = 3 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        custom_text,
        { type = "padding", val = 2 },
        dashboard.section.footer,
        { type = "padding", val = 4 },
        dashboard.section.buttons,
      }



      -- Unified dashboard palette using the requested accent color
      vim.cmd([[
        highlight AlphaHeader guifg=#DE7356 guibg=#333333 gui=bold
        highlight AlphaButtons guifg=#DE7356 guibg=#333333
        highlight AlphaAccent guifg=#DE7356 guibg=#333333 gui=bold
        highlight AlphaFooter guifg=#DE7356 guibg=#333333
      ]])

      alpha.setup(dashboard.config)
    end,

  }
}