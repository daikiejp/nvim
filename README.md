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
            ├── gitsigns.lua
            └── cellular-automaton.lua

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
- **cellular-automaton**: A useless plugin you can procrastinate

## 🔑 Keybindings Usage

ℹ️ &lt;leader&gt; is set to the spacebar (&lt;Space&gt;)

Keybinding | Mode | Action | Description
-- | -- | -- | --
&lt;leader&gt;pv | n | vim.cmd.Ex | Open file explorer (netrw)
&lt;leader&gt;ff | n | Telescope find_files | Find files
&lt;leader&gt;pf | n | Telescope git_files | Find only git files
&lt;leader&gt;fg | n | Telescope live_grep | Search text in files
&lt;leader&gt;fb | n | Telescope buffers | List open buffers
&lt;leader&gt;fh | n | Telescope help_tags | Search help tags
&lt;leader&gt;u | n | UndotreeToggle | Toggle undo history visualizer
&lt;leader&gt;ha | n | harpoon.mark.add_file() | Add current file to Harpoon list
&lt;leader&gt;hm | n | harpoon.ui.toggle_quick_menu() | Show Harpoon menu
&lt;leader&gt;gs | n | :Git | Open Git status (via Fugitive)
&lt;leader&gt;hp | n | :Gitsigns preview_hunk | Git preview hunks
&lt;leader&gt;tb | n | :Gitsigns toggle_current_line_blame | Git blame current line
&lt;leader&gt;C-F | n | :CellularAutomaton make_it_rain | Make it rain! duh!
K | n | vim.lsp.buf.hover() | Show documentation for symbol under cursor
gd | n | vim.lsp.buf.definition() | Go to definition
&lt;leader&gt;ca | n | vim.lsp.buf.code_action() | Trigger LSP code actions

## 👏 Thanks

- To [@ThePrimeagen](https://www.youtube.com/c/theprimeagen) to follow his tutorial [from 0 to LSP](https://www.youtube.com/watch?v=w7i4amO_zaE) - Oudated
- [LSP Zero](https://lsp-zero.netlify.app/docs/getting-started.html) for no more complex installations.

## 👤 Author

Danny Davila (@daikiejp)  
2025
