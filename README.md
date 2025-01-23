# Daikie's Neovim config

This is my personal Neovim configuration, where I manage all settings and plugins using Lazy.nvim. It includes a range of useful packages to enhance productivity, streamline workflows, and customize Neovim to fit my development needs. Be water, my friend! 🌊

## 🧰  Before start

Read the [prerequisites file](PREREQUISITES.md) in order to see the prerequisites and packages need installed before.

## 📁 Folder Structure

```text
~/.config/nvim/
├── init.lua                 # Only requires("daikie")
└── lua/
    └── daikie/
        ├── init.lua        # Main entrypoint
        ├── plugins.lua     # Lazy configuration
        └── lazy/           # One file per plugin
            ├── telescope.lua
            ├── treesitter.lua
            ├── harpoon.lua
            ├── undotree.lua
            ├── fugitive.lua
            ├── tokyonight.lua
            ├── lsp.lua
            ├── cmp.lua
            ├── lualine.lua
            └── gitsigns.lua
```

## 🛠️ INSTALLATION

```bash
git clone https://github.com/daikiejp/nvim.git ~/.config/nvim
nvim
```

## 🧩 Plugin Management

Currently using **lazy.nvim**

- Old: packer.nvim
- Old: Vundle

## 📦 Plugins Included

- **Telescope**: Fuzzy finder
- **Treesitter**: Syntax highlighting
- **Harpoon**: Quick file navigation
- **Undotree**: Undo history visualizer
- **Fugitive**: Git integration
- **tokyonight**: Colorscheme
- **LSP**: Language Server Protocol with support for Lua, Python, JS, Rust
- **nvim-cmp**: Autocompletion
- **Lualine**: Status line
- **gitsigns**: Git signs

## 🔑 Keybindings Usage

ℹ️ <leader> is set to the spacebar (<Space>)

Keybinding | Mode | Action | Description
-- | -- | -- | --
<leader>pv | n | vim.cmd.Ex | Open file explorer (netrw)
<leader>ff | n | Telescope find_files | Find files
<leader>pf | n | Telescope git_files | Find only git files
<leader>fg | n | Telescope live_grep | Search text in files
<leader>fb | n | Telescope buffers | List open buffers
<leader>fh | n | Telescope help_tags | Search help tags
<leader>u | n | UndotreeToggle | Toggle undo history visualizer
<leader>ha | n | harpoon.mark.add_file() | Add current file to Harpoon list
<leader>hm | n | harpoon.ui.toggle_quick_menu() | Show Harpoon menu
<leader>gs | n | :Git | Open Git status (via Fugitive)
K | n | vim.lsp.buf.hover() | Show documentation for symbol under cursor
gd | n | vim.lsp.buf.definition() | Go to definition
<leader>ca | n | vim.lsp.buf.code_action() | Trigger LSP code actions

## 👏 Thanks

- To [@ThePrimeagen](https://www.youtube.com/c/theprimeagen) to follow his tutorial [from 0 to LSP](https://www.youtube.com/watch?v=w7i4amO_zaE) - Oudated
- [LSP Zero](https://lsp-zero.netlify.app/docs/getting-started.html) for no more complex installations.

## 👤 Author

Danny Davila (@daikiejp)  
2025
