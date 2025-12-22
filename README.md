# My Neovim Configuration

A modern, minimal, and beginner-friendly Neovim configuration built with Lua. This setup is designed to make Neovim easy to adapt for everyone, whether you're just starting out or looking for a solid foundation to build upon.

## Features

- Beautiful colorscheme and UI
- Plugin management with [lazy.nvim](https://github.com/folke/lazy.nvim)
- LSP support for intelligent code completion
- Fuzzy finding with Telescope
- File explorer with Neo-tree
- Fast startup time
- Sensible defaults and keybindings
- Well-documented and easy to customize

## Prerequisites

Before installing this configuration, make sure you have:

- **Neovim >= 0.9.0** (recommended: latest stable version)
- **Git** (for cloning the repo and plugin management)
- **A C compiler** (gcc or clang) - required for Treesitter
- **Node.js** (optional, but recommended for some LSP servers)
- **Ripgrep** (optional, for better Telescope performance)
- **A Nerd Font** (optional, for icons - recommended: [JetBrainsMono Nerd Font](https://www.nerdfonts.com/))

## Installation

### Step 1: Install Neovim

Choose the installation method for your operating system:

#### macOS
```bash
# Using Homebrew
brew install neovim

# Or download from GitHub releases
# https://github.com/neovim/neovim/releases
```

#### Linux

**Ubuntu/Debian:**
```bash
# Using apt (may not have latest version)
sudo apt install neovim

# For latest stable version, use snap
sudo snap install nvim --classic

# Or build from source
sudo apt install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

**Arch Linux:**
```bash
sudo pacman -S neovim
```

**Fedora:**
```bash
sudo dnf install neovim
```

#### Windows
```powershell
# Using Chocolatey
choco install neovim

# Or using Scoop
scoop install neovim

# Or download from GitHub releases
# https://github.com/neovim/neovim/releases
```

### Step 2: Backup Your Current Configuration

If you already have a Neovim configuration, back it up first:

```bash
# Backup your current config
mv ~/.config/nvim ~/.config/nvim.backup

# Backup your data (plugins, cache, etc.)
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup
```

### Step 3: Install This Configuration

```bash
# Clone this repository
git clone https://github.com/mayu-z/nvim-config.git ~/.config/nvim

# Start Neovim - plugins will install automatically
nvim
```

On first launch, Neovim will:
1. Install the lazy.nvim plugin manager
2. Download and install all configured plugins
3. Set up language servers and treesitter parsers

This may take a few minutes. Once complete, restart Neovim to ensure everything loads properly.

### Step 4: Install Additional Tools (Optional)

For the best experience, install these additional tools:

```bash
# Ripgrep (for better Telescope search)
# macOS
brew install ripgrep

# Ubuntu/Debian
sudo apt install ripgrep

# Arch
sudo pacman -S ripgrep

# Nerd Font (for icons)
# Download and install from: https://www.nerdfonts.com/
# Recommended: JetBrainsMono Nerd Font

# Node.js (for many LSP servers)
# macOS
brew install node

# Ubuntu/Debian
sudo apt install nodejs npm

# Arch
sudo pacman -S nodejs npm
```

## Configuration Structure

Here's what each file and directory does in this configuration:

```
~/.config/nvim/
├── init.lua                    # Main entry point - loads all other modules
├── lazy-lock.json             # Plugin version lock file (auto-generated)
└── lua/
    ├── core/
    │   ├── init.lua           # Core initialization
    │   ├── options.lua        # Neovim settings (line numbers, tabs, etc.)
    │   ├── keymaps.lua        # Custom keybindings
    │   └── autocmds.lua       # Autocommands (auto-formatting, etc.)
    └── plugins/
        ├── init.lua           # Plugin manager setup (lazy.nvim)
        ├── ui.lua             # UI plugins (colorscheme, statusline, etc.)
        ├── editor.lua         # Editor plugins (telescope, treesitter, etc.)
        ├── lsp.lua            # LSP configuration
        └── coding.lua         # Coding plugins (completion, snippets, etc.)
```

### File Explanations

#### `init.lua`
The main entry point that Neovim reads first. It loads all other configuration modules in the correct order.

#### `lua/core/options.lua`
Contains all Neovim settings like:
- Line numbers and relative line numbers
- Tab width and indentation
- Scrolling behavior
- Search settings (case insensitive, highlighting)
- File encoding and format

#### `lua/core/keymaps.lua`
Defines all custom keyboard shortcuts. The leader key is set to `<Space>` by default. Common mappings include:
- `<leader>e` - Toggle file explorer
- `<leader>ff` - Find files
- `<leader>fg` - Live grep (search in files)
- `<leader>w` - Save file
- `<leader>q` - Quit

#### `lua/core/autocmds.lua`
Automatic commands that run on certain events:
- Auto-save on file changes
- Auto-format on save
- Highlight yanked text
- Remove trailing whitespace

#### `lua/plugins/`
Plugin configurations organized by category:
- **ui.lua**: Visual improvements (themes, statusline, icons)
- **editor.lua**: Editing enhancements (fuzzy finder, syntax highlighting)
- **lsp.lua**: Language server protocol for code intelligence
- **coding.lua**: Code completion and snippets

## Default Keybindings

The leader key is `<Space>`. Here are some essential keybindings:

### General
- `<leader>w` - Save file
- `<leader>q` - Quit
- `<leader>Q` - Quit all
- `<Esc>` - Clear search highlighting

### File Explorer
- `<leader>e` - Toggle file explorer
- `<leader>E` - Focus file explorer

### Fuzzy Finder (Telescope)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep (search text in files)
- `<leader>fb` - List buffers
- `<leader>fh` - Help tags
- `<leader>fo` - Old files (recent)

### LSP (when in a file with LSP support)
- `gd` - Go to definition
- `gr` - Go to references
- `K` - Hover documentation
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `[d` - Previous diagnostic
- `]d` - Next diagnostic

### Code Completion
- `<Tab>` - Next completion item
- `<S-Tab>` - Previous completion item
- `<CR>` (Enter) - Confirm completion
- `<C-Space>` - Trigger completion

### Window Navigation
- `<C-h>` - Move to left window
- `<C-j>` - Move to bottom window
- `<C-k>` - Move to top window
- `<C-l>` - Move to right window

## Customization

This configuration is designed to be easily customizable. Here's how:

### Change the Colorscheme

Edit `lua/plugins/ui.lua` and change the colorscheme plugin or modify the setup:

```lua
-- Example: Switch to a different colorscheme
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end,
}
```

### Add New Plugins

Add new plugins to the appropriate file in `lua/plugins/`:

```lua
-- Example: Add a new plugin
return {
  "username/plugin-name",
  config = function()
    -- Plugin configuration here
  end,
}
```

### Modify Keybindings

Edit `lua/core/keymaps.lua`:

```lua
-- Example: Add a new keybinding
vim.keymap.set('n', '<leader>x', ':YourCommand<CR>', { desc = 'Description' })
```

### Change Settings

Edit `lua/core/options.lua`:

```lua
-- Example: Change tab width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
```

## Troubleshooting

### Plugins won't install
1. Make sure you have git installed
2. Try removing the data directory: `rm -rf ~/.local/share/nvim`
3. Restart Neovim

### LSP not working
1. Make sure you have Node.js installed
2. Check if the language server is installed: `:Mason`
3. Install missing servers through Mason

### Treesitter errors
Make sure you have a C compiler installed:
- macOS: `xcode-select --install`
- Ubuntu/Debian: `sudo apt install build-essential`
- Arch: `sudo pacman -S base-devel`

### Icons not showing
Install a Nerd Font and set it in your terminal emulator settings.

## Contributing

This configuration is personal, but suggestions and improvements are welcome! Feel free to:
- Open an issue for bugs or suggestions
- Submit a pull request with improvements
- Fork this repo and make it your own

## Learning Resources

New to Neovim? Check out these resources:
- [Neovim Documentation](https://neovim.io/doc/)
- [Learn Vim Progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
- [Vim Adventures](https://vim-adventures.com/) - Learn Vim by playing a game
- [ThePrimeagen's Vim Tutorial](https://www.youtube.com/watch?v=H3o4l4GVLW0)
- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) - Another great starting point

## License

This configuration is available as open source under the terms of the MIT License.

## Acknowledgments

This configuration was built using amazing plugins from the Neovim community. Special thanks to:
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- And many other plugin authors!

---

Made with love by [Mayuresh](https://github.com/mayu-z)

**Remember:** This is YOUR configuration now. Don't be afraid to break things and experiment. That's the best way to learn!
