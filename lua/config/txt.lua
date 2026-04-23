-- txt.lua
-- Save this file in your Neovim config directory (e.g., ~/.config/nvim/lua/txt.lua)

local M = {}

-- Path to the persistent text file
local txt_file = vim.fn.stdpath('data') .. '/scratch.txt'

-- Function to open the text file
function M.open()
  -- Create the file if it doesn't exist
  if vim.fn.filereadable(txt_file) == 0 then
    vim.fn.writefile({}, txt_file)
  end
  
  -- Open the file in a new buffer
  vim.cmd('edit ' .. txt_file)
  
  -- Set up autocommands for this buffer
  local bufnr = vim.api.nvim_get_current_buf()
  
  -- Auto-save on text change
  vim.api.nvim_create_autocmd({'TextChanged', 'TextChangedI'}, {
    buffer = bufnr,
    callback = function()
      vim.cmd('silent write')
    end,
  })
  
  -- Optional: set some nice buffer options
  vim.bo[bufnr].bufhidden = 'hide'
end

-- Setup function to create the command
function M.setup()
  vim.api.nvim_create_user_command('Txt', function()
    M.open()
  end, {})
end

return M