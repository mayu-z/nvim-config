-- File: lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    config = function()
      -- Key bindings on LSP attach
      local on_attach = function(client, bufnr)
        -- Key mappings
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to Definition" })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover" })
      end

      -- Configure servers using vim.lsp.config (modern 0.11+ API)
      local servers = {
        lua_ls = {
          on_attach = on_attach,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" }
              }
            }
          }
        },
        pyright = {
          on_attach = on_attach,
        },
        ts_ls = {
          on_attach = on_attach,
        },
      }

      for server, config in pairs(servers) do
        vim.lsp.config(server, config)
      end
      vim.lsp.enable(vim.tbl_keys(servers))
    end,
  },
}

