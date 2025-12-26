local function open_url(url)
  vim.fn.jobstart({ "cmd", "/c", "start", url }, { detach = true })
end

vim.api.nvim_create_user_command("GitHub", function()
  open_url("https://github.com")
end, {})

vim.api.nvim_create_user_command("LinkedIn", function()
  open_url("https://www.linkedin.com")
end, {})

vim.api.nvim_create_user_command("Discord", function()
  open_url("https://discord.com/channels/@me")
end, {})