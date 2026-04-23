# 🎮 Neovim Configuration

![Neovim Dashboard](assets/dashboard.png)

A modern, feature-rich Neovim configuration with AI-powered development tools, beautiful UI, and optimized keybindings for maximum productivity.

![Neovim](https://img.shields.io/badge/Neovim-0.9+-green?style=flat-square&logo=neovim)
![Lua](https://img.shields.io/badge/Language-Lua-blue?style=flat-square&logo=lua)
![License](https://img.shields.io/badge/License-MIT-brightgreen?style=flat-square)

---

## ✨ Features

- **🤖 GitHub Copilot Integration** - AI-powered code suggestions and CopilotChat for in-editor AI assistance
- **🎨 Beautiful UI** - Custom Björk-themed dashboard with nerd font icons
- **🔍 Fuzzy Finding** - Telescope for fast file and content searching
- **📝 Language Server Support** - LSP integration for Lua, Python, TypeScript/JavaScript
- **🎯 Code Navigation** - Jump to definitions, hover documentation, code intelligence
- **🌳 File Explorer** - Integrated Neotree for easy project navigation
- **💬 Discord Presence** - Show your Neovim activity on Discord
- **✂️ Efficient Editing** - Auto-pairs, comments, surround operations
- **📊 Status Bar** - Lualine with git integration and file info
- **🎪 Alpha Dashboard** - Beautiful startup screen with quick access shortcuts

---

## 📦 Installation

### Prerequisites
- **Neovim** 0.9.0 or higher
- **Git** for cloning repositories
- **Node.js** (for some LSP servers)
- **Python** (for Pyright LSP)
- **ripgrep** (optional, for enhanced search)

### Quick Start

1. **Backup your current config** (if you have one):
```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. **Clone this repository**:
```bash
git clone https://github.com/yourusername/neovim-config.git ~/.config/nvim
# or on Windows
git clone https://github.com/yourusername/neovim-config.git $env:APPDATA\nvim
```

3. **Open Neovim**:
```bash
nvim
```

4. **Lazy.nvim will auto-install** all plugins on first startup

5. **Log in to Copilot** (inside Neovim):
```vim
:Copilot auth
```

---

## 🔧 Configuration Structure

```
nvim/
├── init.lua                 # Main entry point
├── lazy-lock.json          # Plugin versions lock file
├── KEYBINDINGS.md          # Complete keybindings guide
├── README.md               # This file
├── lua/
│   ├── config/
│   │   ├── jii.lua         # Jii configuration
│   │   └── options.lua     # Neovim options & settings
│   └── plugins/            # All plugin configurations
│       ├── alpha.lua       # Dashboard
│       ├── bufferline.lua  # Buffer management
│       ├── copilot.lua     # GitHub Copilot
│       ├── copilot-chat.lua # Copilot Chat UI
│       ├── lsp.lua         # Language servers
│       ├── telescope.lua   # Fuzzy finder
│       ├── lualine.lua     # Status bar
│       └── ...             # Other plugins
```

---

## 🎯 Core Keybindings

### Essential (Must Know)
| Command | Shortcut | Function |
|---------|----------|----------|
| Save | `SPACE + W` | Save current file |
| Quit | `SPACE + Q` | Close Neovim |
| Go to Definition | `G + D` | Jump to definition |
| Hover Docs | `K` | Show documentation |

### File & Buffer Management
| Command | Shortcut | Function |
|---------|----------|----------|
| Toggle Explorer | `SPACE + E` | Open/close file tree |
| Next Buffer | `TAB` | Next open file |
| Previous Buffer | `SHIFT + TAB` | Previous open file |
| Close Buffer | `SPACE + C` | Close current file tab |

### Search & Telescope
| Command | Shortcut | Function |
|---------|----------|----------|
| Find Files | `SPACE + F F` | Fuzzy search files |
| Search Content | `SPACE + F G` | Search text in files |
| Recents | `SPACE + H` | Open recent files |
| Search Buffers | `LDR B` | Search open buffers |

### AI & Copilot
| Command | Shortcut | Mode | Function |
|---------|----------|------|----------|
| Toggle Chat | `SPACE + A A` | Normal/Visual | Open AI chat |
| Quick Chat | `SPACE + A Q` | Normal/Visual | Ask AI question |
| Explain Code | `SPACE + A E` | Visual | Explain selection |
| Review Code | `SPACE + A R` | Visual | Code review |
| Fix Code | `SPACE + A F` | Visual | Fix bugs |
| Optimize | `SPACE + A O` | Visual | Performance improvements |
| Generate Docs | `SPACE + A D` | Visual | Doc comments |
| Generate Tests | `SPACE + A T` | Visual | Test cases |
| Fix Diagnostics | `SPACE + A SHIFT + D` | Normal/Visual | Fix LSP errors |
| Clear Chat | `SPACE + A X` | Normal/Visual | Clear messages |
| Commit Message | `SPACE + A C` | Normal/Visual | Generate commit |

### Insert Mode Suggestions
| Command | Shortcut | Function |
|---------|----------|----------|
| Accept | `CTRL + Y` | Accept suggestion |
| Next | `CTRL + ]` | Next suggestion |
| Previous | `CTRL + [` | Previous suggestion |
| Dismiss | `CTRL + E` | Dismiss suggestion |

### CopilotChat Special
| Command | Shortcut | Function |
|---------|----------|----------|
| Submit | `ENTER` or `CTRL + S` | Send message |
| Close | `Q` or `CTRL + C` | Close chat |
| Reset | `CTRL + X` | Clear chat |
| Show Diff | `G D` | Display changes |
| Copy Diff | `G Y` | Copy changes |

---

## 📚 Plugins Included

### UI & Theme
- **alpha.nvim** - Beautiful startup dashboard
- **lualine.nvim** - Status bar with git integration
- **bufferline.nvim** - Buffer tabs at top
- **nvim-web-devicons** - File type icons

### Navigation & Search
- **telescope.nvim** - Fuzzy finder
- **nvim-tree.lua** - File explorer
- **noice.nvim** - Command line UI

### AI & Copilot
- **copilot.lua** - GitHub Copilot
- **copilot-chat.nvim** - Chat interface with AI

### Language Server & Completion
- **nvim-lspconfig** - LSP configuration
- **cmp** - Autocompletion engine
- **nvim-cmp** - Neovim completion

### Code Enhancement
- **nvim-autopairs** - Auto-close brackets
- **Comment.nvim** - Comment toggle
- **vim-surround** - Bracket/quote surround
- **gitsigns.nvim** - Git change indicators
- **tree-sitter** - Syntax highlighting
- **formatter.nvim** - Code formatting

### Other
- **presence.nvim** - Discord presence
- **notify.nvim** - Notifications
- **indent-blankline.nvim** - Indent guides

---

## 🌐 Dashboard

The startup dashboard features:
- **Björk ASCII Art** - Custom ghost character
- **Quick Access Buttons**:
  - 󰇚 **Recents** - Open recent files
  - 󰑻 **Buffers** - List open buffers
  - 󰄕 **Explore** - Browse files
  - 󰫔 **Search** - Fuzzy find files
  - 󰙪 **Options** - Edit config
  - 󰄑 **Plugins** - Manage plugins
- **Live Info** - Current date and plugin count

---

## 🛠️ Language Server Setup

Currently configured LSP servers:

### Lua
- **lua_ls** - Lua language server
- Uses for Neovim config development

### Python
- **pyright** - Python static type checker
- Provides type hints and code intelligence

### TypeScript/JavaScript
- **ts_ls** - TypeScript language server
- Supports both TS and JS files

### Add More Languages
Edit `lua/plugins/lsp.lua` and add to the servers list:
```lua
servers = {
  "rust_analyzer",    -- for Rust
  "gopls",            -- for Go
  "clangd",           -- for C/C++
  -- ... more servers
}
```

---

## 🎨 Customization

### Change Theme
Edit `lua/plugins/colorscheme.lua`:
```lua
{
  "catppuccin/nvim",
  config = function()
    require("catppuccin").setup({
      flavor = "mocha"  -- mocha, macchiato, frappe, latte
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}
```

### Disable Copilot
Comment out in `init.lua` or `lua/plugins/copilot-chat.lua`

### Change Leader Key
Edit `lua/config/options.lua`:
```lua
vim.g.mapleader = " "  -- Change space to another key
```

### Add Custom Keybindings
Create a new file `lua/plugins/custom-keymaps.lua`:
```lua
return {
  {
    "yourname/dummy-plugin", -- any plugin as anchor
    config = function()
      vim.keymap.set('n', '<leader>xx', '<cmd>YourCommand<cr>')
    end
  }
}
```

---

## 🚀 Installation of Optional Tools

### ripgrep (for live_grep)
**Windows (Admin PowerShell):**
```powershell
choco install ripgrep
```

**Or using Scoop:**
```powershell
scoop install ripgrep
```

**Or download manually:**
https://github.com/BurntSushi/ripgrep/releases

---

## 🐛 Troubleshooting

### Copilot Not Working
```vim
:Copilot auth
```
or if already logged in with wrong account:
```vim
:Copilot logout
:Copilot auth
```

### LSP Not Starting
Check if language servers are installed:
```vim
:LspInfo
```

Install missing servers:
```vim
:MasonInstall python-lsp-server
```

### Telescope Error: "rg: Executable not found"
Install ripgrep (see "Installation of Optional Tools" above)

### Plugins Not Installing
Delete and reinstall:
```bash
rm -rf ~/.local/share/nvim  # Linux/Mac
rm -r $env:LOCALAPPDATA\nvim-data  # Windows
```
Then reopen Neovim

### Icons Not Displaying
Install a Nerd Font:
- **FiraCode Nerd Font**
- **Inconsolata Nerd Font**
- **JetBrains Mono Nerd Font**

Then set your terminal/editor to use it.

---

## 📝 Updates

To update plugins:
```vim
:Lazy update
```

To update individual plugin:
```vim
:Lazy update {plugin-name}
```

---

## 🔐 Git Ignore

Add to `.gitignore`:
```
lazy-lock.json
**/node_modules/
*.swp
*.swo
.DS_Store
```

---

## 📖 Learning Resources

- [Neovim Documentation](https://neovim.io/doc/user/)
- [Lua in Neovim](https://neovim.io/doc/user/lua.html)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [Telescope Documentation](https://github.com/nvim-telescope/telescope.nvim)
- [GitHub Copilot Neovim](https://github.com/zbirenbaum/copilot.lua)

---

## 🤝 Contributing

Found a bug or have a suggestion? Feel free to:
1. Open an issue
2. Create a pull request
3. Fork and customize for yourself

---

## 📄 License

This configuration is provided as-is. Feel free to use, modify, and distribute.

---

## 🙋 Support

If you encounter issues:
1. Check the [Troubleshooting](#troubleshooting) section
2. Review plugin documentation
3. Check Neovim logs: `:messages`
4. Open an issue on GitHub

---

## ⭐ Acknowledgments

Built with:
- [Lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) - AI chat
- [Alpha.nvim](https://github.com/goolord/alpha-nvim) - Dashboard
- Community plugins and themes

---

**Happy coding! 🚀**

For detailed keybindings, see [KEYBINDINGS.md](KEYBINDINGS.md)
