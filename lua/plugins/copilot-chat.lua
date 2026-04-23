-- CopilotChat Plugin Configuration
-- File: lua/plugins/copilot-chat.lua
-- Place this in: ~\AppData\Local\nvim\lua\plugins\copilot-chat.lua

return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "main",
  cmd = "CopilotChat",
  dependencies = {
    { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
    { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
  },
opts = function()
    local user = vim.env.USER or "User"
    user = user:sub(1, 1):upper() .. user:sub(2)
    return {
      auto_insert_mode = true,
      show_help = false,
      question_header = "  " .. user .. " ",
      answer_header = "  Copilot ",
      error_header = "  Error ",
      separator = "───────────────────────────────────────────────────────────────",
      prompts = {
        Explain = {
          prompt = "/COPILOT_EXPLAIN Write an explanation for the active selection as paragraphs of text.",
        },
        Review = {
          prompt = "/COPILOT_REVIEW Review the selected code.",
        },
        Fix = {
          prompt = "/COPILOT_GENERATE There is a problem in this code. Rewrite the code to show it with the bug fixed.",
        },
        Optimize = {
          prompt = "/COPILOT_GENERATE Optimize the selected code to improve performance and readability.",
        },
        Docs = {
          prompt = "/COPILOT_GENERATE Please add documentation comment for the selection.",
        },
        Tests = {
          prompt = "/COPILOT_GENERATE Please generate tests for my code.",
        },
        FixDiagnostic = {
          prompt = "Please assist with the following diagnostic issue in file:",
          selection = require("CopilotChat.select").diagnostics,
        },
        Commit = {
          prompt = "Write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.",
          selection = require("CopilotChat.select").gitdiff,
        },
        CommitStaged = {
          prompt = "Write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.",
          selection = function(source)
            return require("CopilotChat.select").gitdiff(source, true)
          end,
        },
      },
      window = {
        layout = "vertical", -- vertical split
        width = 0.4, -- 40% of screen width
        height = 1.0, -- full height
        border = "single", -- single border like in your image
        zindex = 1,
        relative = "editor",
      },
      mappings = {
        complete = {
          detail = "Use @<Tab> or /<Tab> for options.",
          insert = "<Tab>",
        },
        close = {
          normal = "q",
          insert = "<C-c>",
        },
        reset = {
          normal = "<C-x>",
          insert = "<C-x>",
        },
        submit_prompt = {
          normal = "<CR>",
          insert = "<C-s>",
        },
        accept_diff = {
          normal = "<C-y>",
          insert = "<C-y>",
        },
        yank_diff = {
          normal = "gy",
        },
        show_diff = {
          normal = "gd",
        },
        show_system_prompt = {
          normal = "gp",
        },
        show_user_selection = {
          normal = "gs",
        },
      },
    }
  end,
  keys = {
    -- Submit prompt
    { "<c-s>", "<CR>", ft = "copilot-chat", desc = "Submit Prompt", remap = true },
    
    -- AI menu prefix
    { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
    
    -- Toggle chat - MODIFIED to open on right side
    {
      "<leader>aa",
      function()
        local chat = require("CopilotChat")
        -- Toggle the chat
        chat.toggle()
        -- After opening, move the window to the right
        vim.schedule(function()
          -- Find the copilot chat window
          for _, win in ipairs(vim.api.nvim_list_wins()) do
            local buf = vim.api.nvim_win_get_buf(win)
            local buf_name = vim.api.nvim_buf_get_name(buf)
            if buf_name:match("copilot%-chat") then
              -- Move window to the right
              vim.cmd("wincmd L")
              break
            end
          end
        end)
      end,
      desc = "Toggle (CopilotChat)",
      mode = { "n", "v" },
    },
    
    -- Clear/Reset chat
    {
      "<leader>ax",
      function()
        return require("CopilotChat").reset()
      end,
      desc = "Clear (CopilotChat)",
      mode = { "n", "v" },
    },
    
    -- Quick chat
    {
      "<leader>aq",
      function()
        local input = vim.fn.input("Quick Chat: ")
        if input ~= "" then
          require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
        end
      end,
      desc = "Quick Chat (CopilotChat)",
      mode = { "n", "v" },
    },
    
    -- Prompt actions
    {
      "<leader>ap",
      function()
        local actions = require("CopilotChat.actions")
        require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
      end,
      desc = "Prompt Actions (CopilotChat)",
      mode = { "n", "v" },
    },

    -- Disable Copilot
    {
      "<leader>az",
      "<cmd>Copilot disable<CR>",
      desc = "Disable Copilot",
      mode = { "n", "v" },
    },
    
    -- Explain code
    {
      "<leader>ae",
      function()
        require("CopilotChat").ask("Explain how this code works.", {
          selection = require("CopilotChat.select").visual,
        })
      end,
      desc = "Explain Code (CopilotChat)",
      mode = "v",
    },
    
    -- Review code
    {
      "<leader>ar",
      function()
        require("CopilotChat").ask("Review this code and suggest improvements.", {
          selection = require("CopilotChat.select").visual,
        })
      end,
      desc = "Review Code (CopilotChat)",
      mode = "v",
    },
    
    -- Fix code
    {
      "<leader>af",
      function()
        require("CopilotChat").ask("Fix this code.", {
          selection = require("CopilotChat.select").visual,
        })
      end,
      desc = "Fix Code (CopilotChat)",
      mode = "v",
    },
    
    -- Optimize code
    {
      "<leader>ao",
      function()
        require("CopilotChat").ask("Optimize this code.", {
          selection = require("CopilotChat.select").visual,
        })
      end,
      desc = "Optimize Code (CopilotChat)",
      mode = "v",
    },
    
    -- Generate docs
    {
      "<leader>ad",
      function()
        require("CopilotChat").ask("Add documentation for this code.", {
          selection = require("CopilotChat.select").visual,
        })
      end,
      desc = "Generate Docs (CopilotChat)",
      mode = "v",
    },
    
    -- Generate tests
    {
      "<leader>at",
      function()
        require("CopilotChat").ask("Generate tests for this code.", {
          selection = require("CopilotChat.select").visual,
        })
      end,
      desc = "Generate Tests (CopilotChat)",
      mode = "v",
    },
    
    -- Fix diagnostic
    {
      "<leader>aD",
      function()
        require("CopilotChat").ask("Fix diagnostic issues in this code.", {
          selection = require("CopilotChat.select").diagnostics,
        })
      end,
      desc = "Fix Diagnostic (CopilotChat)",
      mode = { "n", "v" },
    },
    
    -- Commit message
    {
      "<leader>ac",
      function()
        require("CopilotChat").ask("Write a commit message for these changes.", {
          selection = require("CopilotChat.select").gitdiff,
        })
      end,
      desc = "Generate Commit (CopilotChat)",
      mode = { "n", "v" },
    },
  },
  config = function(_, opts)
    local chat = require("CopilotChat")
    local select = require("CopilotChat.select")
    
    -- Setup CopilotChat
    chat.setup(opts)
    
    -- Remove line numbers in chat buffer and set proper formatting
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "copilot-*",
      callback = function()
        vim.opt_local.relativenumber = false
        vim.opt_local.number = false
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.foldlevel = 999
        vim.opt_local.signcolumn = "no"
      end,
    })
    
    -- Highlight for CopilotChat matching your orange theme
    vim.api.nvim_set_hl(0, "CopilotChatHeader", { fg = "#FF8C42", bold = true }) -- Orange for headers
    vim.api.nvim_set_hl(0, "CopilotChatQuestion", { fg = "#FF8C42" }) -- Orange for user questions
    vim.api.nvim_set_hl(0, "CopilotChatAnswer", { fg = "#D4D4D4" }) -- Light gray for AI responses
    vim.api.nvim_set_hl(0, "CopilotChatSelection", { bg = "#2A2A2A" }) -- Dark selection
    vim.api.nvim_set_hl(0, "CopilotChatBorder", { fg = "#FF8C42" }) -- Orange border
    vim.api.nvim_set_hl(0, "CopilotChatSeparator", { fg = "#404040" }) -- Dark gray separator
  end,
}
