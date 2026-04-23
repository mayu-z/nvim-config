-- lazy.nvim bootstrap (DO NOT SKIP)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  error("lazy.nvim not found at: " .. lazypath)
end

vim.opt.rtp:prepend(lazypath)

-- core settings
require("config.options")

-- plugins
require("lazy").setup("plugins")

require("config.shortcuts")
 -- :txt
require('config.txt').setup()