# 🎮 Neovim Complete Keybindings Guide
*All shortcuts organized from most important to least important*

---

## 🔴 CORE NAVIGATION & ESSENTIALS (MUST KNOW)

### 1. **SPACE (Leader Key)**
- **Shortcut:** `SPACE`
- **Function:** Leader key prefix - press space before other keys to trigger commands
- **Example:** `SPACE + W` = Save file
- **Mode:** Normal mode

### 2. **Save File**
- **Shortcut:** `SPACE + W`
- **Function:** Save current file
- **Command:** `:w<CR>`
- **Mode:** Normal mode

### 3. **Quit File**
- **Shortcut:** `SPACE + Q`
- **Function:** Close current file/quit Neovim
- **Command:** `:q<CR>`
- **Mode:** Normal mode

### 4. **Go to Definition**
- **Shortcut:** `G D`
- **Function:** Jump to where a variable/function is defined
- **Command:** `vim.lsp.buf.definition`
- **Mode:** Normal mode
- **Requires:** LSP enabled

### 5. **Hover Documentation**
- **Shortcut:** `K` (Capital K)
- **Function:** Show function/variable documentation on hover
- **Command:** `vim.lsp.buf.hover`
- **Mode:** Normal mode
- **Requires:** LSP enabled

---

## 🟠 FILE & BUFFER MANAGEMENT

### 6. **Toggle File Explorer**
- **Shortcut:** `SPACE + E`
- **Function:** Open/close the file tree on the left
- **Command:** `:Neotree toggle<CR>`
- **Mode:** Normal mode
- **Plugin:** Neotree

### 7. **Focus File Explorer**
- **Shortcut:** `SPACE + SHIFT + E`
- **Function:** Move cursor to the file explorer window
- **Command:** `:Neotree focus<CR>`
- **Mode:** Normal mode
- **Plugin:** Neotree

### 8. **Switch to Previous Buffer**
- **Shortcut:** `SPACE + B`
- **Function:** Jump to the last buffer you were editing
- **Command:** `<C-^>` (Ctrl + ^)
- **Mode:** Normal mode

### 9. **Next Buffer**
- **Shortcut:** `TAB`
- **Function:** Move to the next open file tab
- **Command:** `:BufferLineCycleNext<CR>`
- **Mode:** Normal mode
- **Plugin:** Bufferline

### 10. **Previous Buffer**
- **Shortcut:** `SHIFT + TAB`
- **Function:** Move to the previous open file tab
- **Command:** `:BufferLineCyclePrev<CR>`
- **Mode:** Normal mode
- **Plugin:** Bufferline

### 11. **Close Buffer**
- **Shortcut:** `SPACE + C`
- **Function:** Close the current buffer/file tab
- **Command:** `:bdelete<CR>`
- **Mode:** Normal mode
- **Plugin:** Bufferline

---

## 🟡 SEARCH & TELESCOPE

### 12. **Find Files**
- **Shortcut:** `SPACE + F F`
- **Function:** Fuzzy search for files in project
- **Command:** `:Telescope find_files<CR>`
- **Mode:** Normal mode
- **Plugin:** Telescope

### 13. **Live Grep (Search Content)**
- **Shortcut:** `SPACE + F G`
- **Function:** Search for text content inside all files
- **Command:** `:Telescope live_grep<CR>`
- **Mode:** Normal mode
- **Plugin:** Telescope

---

## 🟢 DASHBOARD & UI

### 14. **Open Dashboard**
- **Shortcut:** `SPACE + H`
- **Function:** Open the Alpha dashboard (home screen)
- **Command:** `:Alpha<CR>`
- **Mode:** Normal mode
- **Plugin:** Alpha

### 15. **Show Lines Count**
- **Shortcut:** `SPACE + L C`
- **Function:** Display total lines written in session
- **Command:** `show_lines_count()`
- **Mode:** Normal mode
- **Plugin:** Custom

---

## 🔵 AI & COPILOT (Advanced Features)

### 16. **Toggle CopilotChat**
- **Shortcut:** `SPACE + A A`
- **Function:** Open/close AI chat window for questions
- **Mode:** Normal & Visual
- **Plugin:** CopilotChat
- **Note:** Uses OpenAI GPT-4 or Copilot API

### 17. **Quick Chat**
- **Shortcut:** `SPACE + A Q`
- **Function:** Ask AI a quick question about selected code
- **Mode:** Normal & Visual
- **Plugin:** CopilotChat

### 18. **Explain Code**
- **Shortcut:** `SPACE + A E` (Visual mode only)
- **Function:** Get AI explanation of selected code
- **Mode:** Visual mode
- **Plugin:** CopilotChat

### 19. **Review Code**
- **Shortcut:** `SPACE + A R` (Visual mode only)
- **Function:** Get code review and improvement suggestions
- **Mode:** Visual mode
- **Plugin:** CopilotChat

### 20. **Fix Code**
- **Shortcut:** `SPACE + A F` (Visual mode only)
- **Function:** Ask AI to fix bugs in selected code
- **Mode:** Visual mode
- **Plugin:** CopilotChat

### 21. **Optimize Code**
- **Shortcut:** `SPACE + A O` (Visual mode only)
- **Function:** Get performance and readability improvements
- **Mode:** Visual mode
- **Plugin:** CopilotChat

### 22. **Generate Documentation**
- **Shortcut:** `SPACE + A D` (Visual mode only)
- **Function:** Generate doc comments for code
- **Mode:** Visual mode
- **Plugin:** CopilotChat

### 23. **Generate Tests**
- **Shortcut:** `SPACE + A T` (Visual mode only)
- **Function:** Generate test cases for selected code
- **Mode:** Visual mode
- **Plugin:** CopilotChat

### 24. **Clear CopilotChat**
- **Shortcut:** `SPACE + A X`
- **Function:** Clear all messages in chat window
- **Mode:** Normal & Visual
- **Plugin:** CopilotChat

### 25. **Prompt Actions (AI Menu)**
- **Shortcut:** `SPACE + A P`
- **Function:** Open menu of predefined AI prompts
- **Mode:** Normal & Visual
- **Plugin:** CopilotChat

### 26. **Fix Diagnostic Issues**
- **Shortcut:** `SPACE + A SHIFT + D`
- **Function:** Ask AI to fix code errors/warnings
- **Mode:** Normal & Visual
- **Plugin:** CopilotChat

### 27. **Generate Commit Message**
- **Shortcut:** `SPACE + A C`
- **Function:** Generate Git commit message with AI
- **Mode:** Normal & Visual
- **Plugin:** CopilotChat

### 28. **Copilot Suggestion Accept**
- **Shortcut:** `CTRL + Y`
- **Function:** Accept AI suggestion while typing
- **Mode:** Insert mode
- **Plugin:** Copilot

### 29. **Copilot Suggestion Next**
- **Shortcut:** `CTRL + ]`
- **Function:** Show next AI suggestion
- **Mode:** Insert mode
- **Plugin:** Copilot

### 30. **Copilot Suggestion Previous**
- **Shortcut:** `CTRL + [`
- **Function:** Show previous AI suggestion
- **Mode:** Insert mode
- **Plugin:** Copilot

### 31. **Copilot Suggestion Dismiss**
- **Shortcut:** `CTRL + E`
- **Function:** Dismiss current AI suggestion
- **Mode:** Insert mode
- **Plugin:** Copilot

---

## 🟣 COPILOT CHAT SPECIAL COMMANDS

### 32. **Submit Prompt in CopilotChat**
- **Shortcut:** `ENTER` or `CTRL + S`
- **Function:** Send message in chat window
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

### 33. **Close CopilotChat Window**
- **Shortcut:** `Q` or `CTRL + C`
- **Function:** Close the AI chat window
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

### 34. **Reset CopilotChat**
- **Shortcut:** `CTRL + X`
- **Function:** Clear chat and reset context
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

### 35. **Accept Diff in CopilotChat**
- **Shortcut:** `CTRL + Y`
- **Function:** Apply code changes suggested by AI
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

### 36. **Yank (Copy) Diff**
- **Shortcut:** `G Y`
- **Function:** Copy AI-suggested code to clipboard
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

### 37. **Show Diff**
- **Shortcut:** `G D`
- **Function:** Display code changes in split view
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

### 38. **Show System Prompt**
- **Shortcut:** `G P`
- **Function:** View the system instructions for AI
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

### 39. **Show User Selection**
- **Shortcut:** `G S`
- **Function:** Show what code was selected for AI
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

### 40. **Complete Menu in Chat**
- **Shortcut:** `@TAB` or `/TAB`
- **Function:** Show available options in chat
- **Mode:** CopilotChat mode
- **Plugin:** CopilotChat

---

## 🔐 EDITOR ENHANCEMENTS (Built-in)

### 41. **Auto-pairs**
- **Function:** Automatically closes brackets, quotes, etc.
- **Example:** Type `(` → automatically inserts `)`
- **Plugin:** nvim-autopairs

### 42. **Comment Toggle**
- **Function:** Comment/uncomment lines
- **Default:** Depends on language
- **Plugin:** Comment.nvim

### 43. **Surround Text**
- **Function:** Change surrounding quotes, brackets, etc.
- **Example:** `cs"'` = change double quotes to single quotes
- **Plugin:** vim-surround

---

## 📊 DISPLAY & UI

### 44. **Lualine Status Bar**
- **Function:** Shows file info, mode, git status at bottom
- **Plugin:** lualine.nvim

### 45. **Bufferline Tabs**
- **Function:** Shows open files as tabs at top
- **Plugin:** bufferline.nvim

### 46. **Indent Guide Lines**
- **Function:** Shows visual guides for code indentation
- **Plugin:** indent-blankline.nvim

### 47. **Git Signs**
- **Function:** Shows git changes in left margin
- **Plugin:** gitsigns.nvim

### 48. **Discord Presence**
- **Function:** Shows your Neovim activity on Discord
- **Plugin:** presence.nvim

---

## 🎨 COLOR & VISUAL

### 49. **Catppuccin Theme**
- **Function:** Beautiful dark theme with orange accent
- **Plugin:** catppuccin/nvim
- **Colors:** Dark background, orange accents

---

## 📝 LANGUAGE SERVER (LSP)

### 50. **LSP Configured Languages**
- **Lua:** lua_ls
- **Python:** pyright
- **TypeScript/JavaScript:** ts_ls
- **Note:** Provides auto-completion, error checking, go-to-definition

---

## 💡 USAGE TIPS

### Combining Shortcuts:
- Most commands use **SPACE (Leader) + Letter**
- For **Copilot AI**: Use **SPACE + A** then another letter
- For **Search**: Use **SPACE + F** then another letter

### Example Workflows:

**Saving and Closing:**
1. `SPACE + W` = Save
2. `SPACE + Q` = Quit

**Finding Code:**
1. `SPACE + F F` = Find file
2. Use arrow keys to select
3. Press `ENTER` to open

**Using AI Copilot on Code:**
1. Highlight code in Visual mode (V + movement keys)
2. `SPACE + A R` = Get code review
3. Accept or reject suggestions

---

## 🔗 QUICK REFERENCE CARD

| Task | Shortcut | Mode |
|------|----------|------|
| Save | SPACE + W | Normal |
| Quit | SPACE + Q | Normal |
| Find Files | SPACE + F F | Normal |
| Search Text | SPACE + F G | Normal |
| Toggle Explorer | SPACE + E | Normal |
| Next Buffer | TAB | Normal |
| AI Chat | SPACE + A A | Normal/Visual |
| Explain Code | SPACE + A E | Visual |
| Go to Definition | G D | Normal |
| Hover Docs | K | Normal |
| Accept Suggestion | CTRL + Y | Insert |

---

**Total Shortcuts: 50 commands**
**Most Important: Save, Quit, Navigate, Find, AI Chat**

