-- Set the winbar to use the Lua function
vim.opt.winbar = "%{%v:lua.MyWinbar()%}"

-- Define the Lua function globally
function _G.MyWinbar()
  local lines = vim.api.nvim_buf_line_count(0)
  return "󰈔 " .. lines .. " lines"
end

