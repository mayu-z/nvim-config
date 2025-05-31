--[[ return {
  "andweeb/presence.nvim",
  lazy = false,
  config = function()
    local presence = require("presence")

    presence:setup({
      auto_update         = true,
      neovim_image_text   = "The Chad Editor",
      client_id           = "793271441293967371",
      main_image          = "file", -- allows us to override below
      buttons             = true,
      show_time           = true,
      editing_text        = "Editing %s",
      file_explorer_text  = "Browsing %s",
      git_commit_text     = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text        = "Reading %s",
      workspace_text      = "Working on %s",
      line_number_text    = "Line %s out of %s",
    })

    -- Monkey patch to customize icons and text
    local original_payload = presence._generate_payload
    presence._generate_payload = function(self, ...)
      local payload = original_payload(self, ...)
      local file = vim.fn.expand("%:t") or "Untitled"
      local filetype = vim.bo.filetype or "text"

      payload.assets = {
        large_image = filetype,         -- this shows the filetype icon
        large_text = file,              -- this shows the file name
        small_image = "neovim",         -- this is the Neovim logo
        small_text = self.options.neovim_image_text,
      }

      return payload
    end
  end,
} ]]

return {
  "andweeb/presence.nvim",
  lazy = false,
  config = function()
    local presence = require("presence")

    presence:setup({
      auto_update         = true,
      neovim_image_text   = "The Chad Editor",
      client_id           = "793271441293967371",
      main_image          = "file",
      buttons             = true,
      show_time           = true,
      editing_text        = "Editing %s",
      file_explorer_text  = "Browsing %s",
      git_commit_text     = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text        = "Reading %s",
      workspace_text      = "Working on %s",
      line_number_text    = "Line %s out of %s",
    })

    -- Monkey patch to customize icons and text
    local original_payload = presence._generate_payload
    presence._generate_payload = function(self, ...)
      local payload = original_payload(self, ...)

      local file = vim.fn.expand("%:t") or "Untitled"
      local filetype = vim.bo.filetype or "text"
      local line = vim.fn.line(".")
      local col = vim.fn.col(".")

      payload.assets = {
        large_image = filetype,
        large_text = string.format("%s — Ln %d, Col %d", file, line, col),
        small_image = "neovim",
        small_text = self.options.neovim_image_text,
      }

      return payload
    end
  end,
}

