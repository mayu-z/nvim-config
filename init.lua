-- lazy.nvim bootstrap (DO NOT SKIP)
local lazypath = vim.fn.stdpath("data") .. "\\lazy\\lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  error("lazy.nvim not found at: " .. lazypath)
end

vim.opt.rtp:prepend(lazypath)

-- Add custom colorscheme to rtp
local config_path = vim.fn.stdpath("config"):gsub("\\", "/")
vim.opt.rtp:prepend(config_path .. "/colorscheme/claude")

-- core settings
require("config.options")

-- plugins
require("lazy").setup("plugins")

require("config.shortcuts")
