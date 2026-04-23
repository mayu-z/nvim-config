# Keybindings

Leader key: `Space`  
Local leader key: `Space`

Modes:
- `n` normal
- `i` insert
- `v` visual
- `x` visual block
- `s` select
- `t` terminal

---

## Core

| Action | Key | Mode |
|--------|-----|------|
| Save file | `<leader>w` | `n` |
| Quit window | `<leader>q` | `n` |
| Open dashboard | `<leader>h` | `n` |
| Show line counter | `<leader>lc` | `n` |

---

## File Explorer and Buffers

| Action | Key | Mode |
|--------|-----|------|
| Toggle explorer (Neotree command) | `<leader>e` | `n` |
| Focus explorer (Neotree command) | `<leader>E` | `n` |
| Toggle explorer (NvimTree command) | `<leader>e` | `n` |
| Switch to previous buffer | `<leader>b` | `n` |
| Next buffer | `<Tab>` | `n` |
| Previous buffer | `<S-Tab>` | `n` |
| Close current buffer | `<leader>c` | `n` |

---

## Telescope Search

| Action | Key | Mode |
|--------|-----|------|
| Find files | `<leader>ff` | `n` |
| Live grep | `<leader>fg` | `n` |
| List buffers | `<leader>fb` | `n` |
| Help tags | `<leader>fh` | `n` |
| Recent files | `<leader>fr` | `n` |
| Grep word under cursor | `<leader>fc` | `n` |

---

## LSP Navigation

| Action | Key | Mode |
|--------|-----|------|
| Go to definition | `gd` | `n` |
| Hover documentation | `K` | `n` |

---

## Escape and Terminal Shortcuts

| Action | Key | Mode |
|--------|-----|------|
| Escape to Normal mode | `<Esc>` | `i` |
| Escape to Normal mode | `<Esc>` | `v`, `x`, `s` |
| Exit Terminal mode to Normal mode | `<Esc>` | `t` |
| Escape alternative | `<C-[>` | `i`, `v`, `x`, `s` |
| Escape alternative | `jk` | `i` |
| Exit Terminal mode alternative | `jk` | `t` |
| Escape alternative | `<C-c>` | `i` |
| Escape alternative | `<C-c>` | `v`, `x`, `s` |
| Disable Space in selection modes | `<Space>` | `v`, `x`, `s` |

---

## Copilot Suggestions

| Action | Key | Mode |
|--------|-----|------|
| Accept suggestion | `<C-y>` | `i` |
| Next suggestion | `<C-]>` | `i` |
| Previous suggestion | `<C-[>` | `i` |
| Dismiss suggestion | `<C-e>` | `i` |

---

## Copilot Chat Global

| Action | Key | Mode |
|--------|-----|------|
| AI group prefix | `<leader>a` | `n`, `v` |
| Toggle chat | `<leader>aa` | `n`, `v` |
| Clear chat | `<leader>ax` | `n`, `v` |
| Quick chat prompt | `<leader>aq` | `n`, `v` |
| Prompt actions menu | `<leader>ap` | `n`, `v` |
| Disable Copilot | `<leader>az` | `n`, `v` |
| Explain selected code | `<leader>ae` | `v` |
| Review selected code | `<leader>ar` | `v` |
| Fix selected code | `<leader>af` | `v` |
| Optimize selected code | `<leader>ao` | `v` |
| Generate docs for selection | `<leader>ad` | `v` |
| Generate tests for selection | `<leader>at` | `v` |
| Fix diagnostics | `<leader>aD` | `n`, `v` |
| Generate commit message | `<leader>ac` | `n`, `v` |

---

## Copilot Chat Buffer

These mappings apply inside the CopilotChat window.

| Action | Key | Mode |
|--------|-----|------|
| Complete menu item | `<Tab>` | `i` |
| Submit prompt | `<CR>` | `n` |
| Submit prompt | `<C-s>` | `i` |
| Submit prompt remap | `<C-s>` -> `<CR>` | `copilot-chat` filetype |
| Close chat | `q` | `n` |
| Close chat | `<C-c>` | `i` |
| Reset chat | `<C-x>` | `n`, `i` |
| Accept diff | `<C-y>` | `n`, `i` |
| Yank diff | `gy` | `n` |
| Show diff | `gd` | `n` |
| Show system prompt | `gp` | `n` |
| Show user selection | `gs` | `n` |

---

## Notes

- `<leader>e` is currently defined in two places (`Neotree` and `NvimTree`).
- `gd` and `K` are defined globally and again on LSP attach with the same behavior.