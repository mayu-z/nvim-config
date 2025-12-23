-- File: lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Configure LSP servers directly
      local lspconfig = require("lspconfig")
      
      -- Lua
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            }
          }
        }
      })
      
      -- Python
      lspconfig.pyright.setup({})
      
      -- TypeScript/JavaScript
      lspconfig.tsserver.setup({})
      
      -- Add any other servers you need
      
      -- Key bindings (optional)
      local on_attach = function(client, bufnr)
        -- Key mappings
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
        -- Add more as needed
      end
    end
  }
}

