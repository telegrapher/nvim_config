# Keybindings

Leader key: `<Space>`

## Commands

| Command | Action |
|---------|--------|
| `:checkhealth` | Run health checks for nvim and plugins |

## General

| Key | Mode | Action |
|-----|------|--------|
| `<leader>pv` | Normal | Open netrw file explorer |
| `J` | Visual | Move selected block down |
| `K` | Visual | Move selected block up |
| `J` | Normal | Join lines (cursor stays in place) |
| `<C-d>` | Normal | Scroll down half page + center |
| `<C-u>` | Normal | Scroll up half page + center |
| `n` / `N` | Normal | Next/prev search match + center |
| `<leader>p` | Visual | Paste without overwriting register |
| `<leader>y` | Normal/Visual | Yank to system clipboard |
| `<leader>Y` | Normal | Yank line to system clipboard |
| `<leader>d` | Normal/Visual | Delete to black hole register |
| `Q` | Normal | Disabled |
| `<C-f>` | Normal | Open tmux-sessionizer |
| `<leader>f` | Normal | LSP format buffer |
| `<C-k>` / `<C-j>` | Normal | Next/prev quickfix item + center |
| `<leader>k` / `<leader>j` | Normal | Next/prev location list item + center |
| `<leader>s` | Normal | Search and replace word under cursor |
| `<leader>x` | Normal | Make current file executable |
| `<leader><leader>` | Normal | Source current file |
| `<leader>mr` | Normal | Cellular Automaton make it rain |

## Autocompletion (nvim-cmp)

| Key | Mode | Action |
|-----|------|--------|
| `<C-p>` | Insert | Select previous completion item |
| `<C-n>` | Insert | Select next completion item |
| `<C-y>` | Insert | Accept/confirm completion |
| `<C-Space>` | Insert | Trigger completion manually |

## LSP (on attach)

| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `K` | Normal | Hover information |
| `<leader>vws` | Normal | Workspace symbol search |
| `<leader>vd` | Normal | Open diagnostic float |
| `<leader>vca` | Normal | Code action |
| `<leader>vrr` | Normal | Show references |
| `<leader>vrn` | Normal | Rename symbol |
| `<C-h>` | Insert | Signature help |
| `[d` | Normal | Next diagnostic |
| `]d` | Normal | Previous diagnostic |

## Go Error Handling Snippets

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ee` | Normal | Insert `if err != nil { return err }` |
| `<leader>ea` | Normal | Insert `assert.NoError(err, "")` |
| `<leader>ef` | Normal | Insert `if err != nil { log.Fatalf(...) }` |
| `<leader>el` | Normal | Insert `if err != nil { logger.Error(...) }` |

## Vim Motions / Yanking

| Key | Mode | Action |
|-----|------|--------|
| `yap` | Normal | Yank a paragraph (current paragraph + surrounding blank lines) |
| `yG` | Normal | Yank from cursor to end of file |

## Plugins

| Key | Mode | Action |
|-----|------|--------|
| `<leader>u` | Normal | Toggle undotree |

## Tmux Navigation (vim-tmux-navigator)

| Key | Mode | Action |
|-----|------|--------|
| `<C-h>` | Normal | Navigate to left tmux pane / vim split |
| `<C-j>` | Normal | Navigate to lower tmux pane / vim split |
| `<C-k>` | Normal | Navigate to upper tmux pane / vim split |
| `<C-l>` | Normal | Navigate to right tmux pane / vim split |
