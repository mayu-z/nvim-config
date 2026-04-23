return {
  "rmagatti/auto-session",
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    auto_restore_enabled = false,
    suppressed_dirs = {
      "~/",
      "~/Projects",
      "~/Downloads",
      vim.fn.expand("~/Downloads"),
      vim.fn.expand("~\\Downloads"),
      "C:/Users/Sakshi Singh/Downloads",
      "C:\\Users\\Sakshi Singh\\Downloads",
      "/",
    },
    -- log_level = 'debug',
  },
}
