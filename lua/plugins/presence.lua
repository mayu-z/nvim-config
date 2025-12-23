
return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  config = function()
    require("presence").setup({
      -- General options
      auto_update         = true,                    -- Update activity every x seconds
      neovim_image_text   = "Neovim",                -- Hover text for Neovim image
      main_image          = "neovim",                -- "neovim" or "file"

      -- Rich Presence text options
      editing_text        = "Editing %s",
      file_explorer_text  = "Browsing %s",
      git_commit_text     = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text        = "Reading %s",
      workspace_text      = "Working on %s",
      line_number_text    = "Line %s out of %s",

      -- Other options
      enable_line_number  = true,
      blacklist           = {},

      -- Optional: custom client ID (not needed unless you want your own app)
      -- client_id = "YOUR_CUSTOM_DISCORD_APP_CLIENT_ID",
    })
  end,
}

