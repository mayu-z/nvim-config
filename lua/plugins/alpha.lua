--
-- return {
--   {
--     "goolord/alpha-nvim",
--     dependencies = { "nvim-tree/nvim-web-devicons" },
--     event = "VimEnter",
--     config = function()
--       local dashboard = require("alpha.themes.dashboard")
--
--       dashboard.section.header.val =  {
--         [[                                    ██████                                    ]],
--         [[                                ████▒▒▒▒▒▒████                                ]],
--         [[                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ]],
--         [[                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ]],
--         [[                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ]],
--         [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ]],
--         [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ]],
--         [[                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ]],
--         [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
--         [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
--         [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
--         [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
--         [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
--         [[                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ]],
--         [[                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ]],
--         [[                        ██      ██      ████      ████                        ]],
--       }
--      dashboard.section.buttons.val = {
--         dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
--         dashboard.button("f", "󰱼  Find file", ":Telescope find_files<CR>"),
--         dashboard.button("q", "  Quit", ":qa<CR>"),
-- 	dashboard.button("LDR C", "󰏖 Buffers", ":Telescope buffers<CR>"),
-- 	dashboard.button("LDR F", "", ":Telescope file_browser<CR>"),
-- 	dashboard.button("LDR S", "nf-md-package_variant Search", ":Telescope live_grep<CR>"),
--       }
--
--       dashboard.section.footer.val = {
--         "🎉 Happy coding!",
--       }
--
--       require("alpha").setup(dashboard.config)
--
--     end,
--
--   }
-- }
return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      
      -- Your Björk ghost ASCII art (keeping it the same)
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

      -- Footer with date and plugin count (with brackets)
      local plugins = require("lazy").stats().count
      dashboard.section.footer.val = {
        "   󰃭  Today is " .. os.date("%a %d %b") .. "  ",
        "   󰏖  " .. plugins .. " plugins in total  ",
      }

      -- Menu buttons with proper alignment
      dashboard.section.buttons.val = {
        dashboard.button("h", "   Recents     LDR h", ":Telescope oldfiles<CR>"),
        dashboard.button("b", "   Buffers     LDR b", ":Telescope buffers<CR>"),
        dashboard.button("v", "   Explore     LDR v", ":Telescope file_browser<CR>"),
        dashboard.button("/", "   Ripgrep     LDR /", ":Telescope live_grep<CR>"),
        dashboard.button("V", "   Options     MRK V", ":e $MYVIMRC<CR>"),
        dashboard.button("P", "   Plugins     MRK P", ":Lazy<CR>"),
      }

      -- Layout
      dashboard.config.layout = {
        { type = "padding", val = 1 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        dashboard.section.footer,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
      }

      alpha.setup(dashboard.config)
    end,
  }
}
