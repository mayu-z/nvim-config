return {
  "folke/which-key.nvim", -- Just using as dependency example
  config = function()
    -- Simple lines counter
    local lines_written = 0
    
    -- Track insertions
    vim.api.nvim_create_autocmd("InsertLeave", {
      callback = function()
        local current_lines = vim.api.nvim_buf_line_count(0)
        -- Simple tracking logic here
      end
    })
    
    -- Display function
    local function show_lines_count()
      print("Lines written this session: " .. lines_written)
    end
    
    -- Keybinding to check
    vim.keymap.set("n", "<leader>lc", show_lines_count, { desc = "Show lines count" })
  end
}

