# Neovim Config — Navigation Reference

> Leader key: `<Space>`

---

## Files & Explorer

| Key | Action |
|-----|--------|
| `-` | Open parent directory (Oil) |
| `<leader>-` | Open parent directory in float (Oil) |
| `<leader>pf` | Find files (Snacks picker) |
| `<leader>pe` | Explore current file's directory (Snacks) |
| `<leader>pc` | Find file in nvim config |
| `<leader>pr` | Recent files (Telescope oldfiles) |

**Inside Oil:**
| Key | Action |
|-----|--------|
| `Enter` | Open file/dir |
| `-` | Go up a directory |
| `q` | Close Oil |
| `<M-h>` | Open in horizontal split |
| `gs` | Sort |

---

## Search & Grep

| Key | Action |
|-----|--------|
| `<leader>ps` | Grep (live search across project) |
| `<leader>pws` | Grep word under cursor / visual selection |
| `<leader>pWs` | Grep WORD under cursor (Telescope) |
| `<leader>pk` | Search keymaps |
| `<leader>vh` | Search help pages |

---

## Harpoon (marked files)

| Key | Action |
|-----|--------|
| `<leader>a` | Add current file to Harpoon |
| `<C-e>` | Toggle Harpoon quick menu |
| `<C-y>` | Jump to file 1 |
| `<C-i>` | Jump to file 2 |
| `<C-n>` | Jump to file 3 |
| `<C-s>` | Jump to file 4 |
| `<C-S-P>` | Previous Harpoon file |
| `<C-S-N>` | Next Harpoon file |

---

## Splits & Windows

| Key | Action |
|-----|--------|
| `<leader>sv` | Split vertical |
| `<leader>sh` | Split horizontal |
| `<leader>se` | Equalize split sizes |
| `<leader>sx` | Close current split |
| `<C-w>hjkl` | Move between splits |

---

## Tabs

| Key | Action |
|-----|--------|
| `<leader>to` | Open new tab |
| `<leader>tx` | Close current tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Previous tab |
| `<leader>tf` | Open current buffer in new tab |

---

## Buffer Navigation

| Key | Action |
|-----|--------|
| `<C-d>` | Scroll down (cursor centered) |
| `<C-u>` | Scroll up (cursor centered) |
| `n` / `N` | Next/prev search result (centered) |
| `<leader>dB` | Delete/close buffer |

---

## Git

| Key | Action |
|-----|--------|
| `<leader>lg` | Open Lazygit |
| `<leader>gl` | Lazygit log |
| `<leader>gbr` | Pick and switch git branch |

---

## LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gR` | Show references |
| `gi` | Show implementations |
| `gt` | Show type definitions |
| `K` | Hover documentation |
| `<C-h>` | Signature help (insert mode) |
| `<leader>vca` | Code actions |
| `<leader>rn` | Rename symbol |
| `<leader>D` | Buffer diagnostics |
| `<leader>d` | Line diagnostics (float) |
| `<leader>f` | Format buffer (LSP) |
| `<leader>mp` | Format with conform |
| `<leader>l` | Trigger linting |
| `<leader>lx` | Toggle LSP diagnostics |
| `<leader>rs` | Restart LSP |

---

## Debugging (DAP)

> Supports Go (dap-go), Rust, C, C++, Zig (codelldb)

| Key | Action |
|-----|--------|
| `<leader>dc` | Continue / Start session |
| `<leader>db` | Toggle breakpoint |
| `<leader>dB` | Conditional breakpoint |
| `<leader>ds` | Step over |
| `<leader>di` | Step into |
| `<leader>do` | Step out |
| `<leader>dq` | Terminate session |
| `<leader>dt` | Toggle DAP UI |
| `<leader>de` | Evaluate expression |

---

## Misc

| Key | Action |
|-----|--------|
| `<leader>s` | Replace word under cursor globally |
| `<leader>fp` | Copy file path to clipboard |
| `<leader>rN` | Rename current file |
| `<C-c>` | Clear search highlight (normal) / Escape (insert) |
| `<leader>th` | Pick colorscheme (Snacks) |
| `<leader>ths` | Pick colorscheme (Telescope) |
| `<leader>pt` | Browse TODO comments |
