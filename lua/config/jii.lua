-- Enable line numbers and relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Always show the sign column (for GitSigns, errors, etc.)
vim.opt.signcolumn = "yes"

-- Highlight current line number in red, others use default
vim.cmd([[
  highlight LineNr guifg=#7aa2f7        " Normal line numbers (Tokyonight blue)
  highlight CursorLineNr guifg=#ff6b6b  " Current line number (light red)
]])

-- Enable highlight for current line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

