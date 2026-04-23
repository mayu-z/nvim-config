local function open_url(url)
  vim.fn.jobstart({ "cmd", "/c", "start", url }, { detach = true })
end

-- Ensure Escape always exits to Normal mode reliably.
vim.keymap.set("i", "<Esc>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set({ "v", "x", "s" }, "<Esc>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
vim.keymap.set({ "i", "v", "x", "s" }, "<C-[>", "<Esc>", { noremap = true, silent = true })

-- Fallback exits for terminals/keyboards that don't send Escape reliably.
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-c>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set({ "v", "x", "s" }, "<C-c>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("t", "jk", [[<C-\\><C-n>]], { noremap = true, silent = true })

vim.api.nvim_create_user_command("GitHub", function()
  open_url("https://github.com")
end, {})

vim.api.nvim_create_user_command("LinkedIn", function()
  open_url("https://www.linkedin.com")
end, {})

vim.api.nvim_create_user_command("Discord", function()
  open_url("https://discord.com/channels/@me")
end, {})