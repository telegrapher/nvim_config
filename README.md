# nvim_config
New lua based nvim configuration

A personalization of https://github.com/ThePrimeagen/init.lua integrated in a Debian system.

Debian package dependencies:

- nvim 0.10.3 (from Debian experimental)
- luarocks (which will pull lua as a dependency)
- fd-find (for telescope)
- ripgrep (for telescope)
- tree-sitter-cli (for treesitter)
- xclip and wl-clipboard (to use the clipboard in X and wayland).

## Plugin Management

Uses [lazy.nvim](https://github.com/folke/lazy.nvim). Bootstrap is in `lua/telegrapher/lazy_init.lua`, plugin specs live under `lua/telegrapher/lazy/`.

| Command | What it does |
|---|---|
| `:Lazy` | Opens the lazy.nvim dashboard UI |
| `:Lazy update` | Updates all plugins to latest (updates `lazy-lock.json`) |
| `:Lazy sync` | Install missing + update existing + clean removed |
| `:Lazy restore` | Reverts plugins to versions pinned in `lazy-lock.json` |

## NerdFonts

https://wiki.debian.org/Fonts/NerdFonts

