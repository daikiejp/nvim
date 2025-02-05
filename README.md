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
        ├── keymaps.lua     # Keymaps
        ├── gitmaps.lua     # Git Keymaps
        ├── set.lua         # Neovim config
        ├── plugins.lua     # Lazy configuration
        └── lazy/           # One file per plugin
            ├── telescope.lua
            ├── treesitter.lua
            ├── harpoon.lua
            ├── undotree.lua
            ├── fugitive.lua
            ├── colorizer.lua
            ├── comment.lua
            ├── themes.lua
            ├── noice.lua
            ├── conform.lua
            ├── lsp.lua
            ├── cmp.lua
            ├── lualine.lua
            ├── gitsigns.lua
            ├── cellular-automaton.lua
            ├── present.lua
            ├── copilot.lua
            └── wakatime.lua
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
- **Colorizer**: Colorize hex codes
- **Comment**: Commenting plugin
- **Themes**: Colorscheme themes
- **Noice**: UI for messages, cmdline and popupmenu
- **conform**: Formatter
- **LSP**: Language Server Protocol with support for Lua, Python, JS, Rust
- **nvim-cmp**: Autocompletion
- **Lualine**: Status line
- **gitsigns**: Git signs
- **cellular-automaton**: A useless plugin you can procrastinate
- **Present**: Markdown presentation
- **Copilot**: AI pair programmer
- **WakaTime**: Programming time tracking and metrics

## 🔑 Keybindings Usage

ℹ️ &lt;leader&gt; is set to the spacebar (&lt;Space&gt;)

Keybinding | Mode | Action | Description
-- | -- | -- | --
&lt;leader&gt;e | n | vim.cmd.Ex | Open file explorer (netrw)
&lt;C-d&gt; | n | <C-d>zz | Scroll down and center cursor
&lt;C-u&gt; | n | <C-u>zz | Scroll up and center cursor 
n | n | nzzzv | Search next and center cursor
N | n | Nzzzv | Search previous and center cursor
&lt;leader&gt;y | n v | `[["+y]]` | Copy to system clipboard
&lt;leader&gt;Y | n | `[["+Y]]` | Copy line to system clipboard
&lt;leader&gt;d | n v | '\"_dw' | Delete word without yanking
&lt;C-c&gt; | i | &lt;Esc&gt; | Exit insert mode
J | v | >+1<CR>gv=gv | Move selected lines down
K | v | <-2<CR>gv=gv | Move selected lines up
&lt;leader&gt;s | n | `[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]` | Search and replace word under cursor
&lt;leader&gt;x | n | <cmd>!chmod +x %<CR> | Make file executable
&lt;C-k&gt; | n | <cmd>cnext<CR>zz | Next search result
&lt;C-j&gt; | n | <cmd>cprev<CR>zz | Previous search result
&lt;k&gt; | n | <cmd>lnext<CR>zz | Next location in quickfix list 
&lt;j&gt; | n | <cmd>lprev<CR>zz | Previous location in quickfix list
&lt;leader&gt;ff | n | Telescope find_files | Find files
&lt;leader&gt;pf | n | Telescope git_files | Find only git files
&lt;leader&gt;fg | n | Telescope live_grep | Search text in files
&lt;leader&gt;fb | n | Telescope buffers | List open buffers
&lt;leader&gt;fh | n | Telescope help_tags | Search help tags
&lt;leader&gt;u | n | UndotreeToggle | Toggle undo history visualizer
&lt;leader&gt;ha | n | harpoon.mark.add_file() | Add current file to Harpoon list
&lt;leader&gt;hm | n | harpoon.ui.toggle_quick_menu() | Show Harpoon menu
&lt;leader&gt;fo | n v | comforn.format({ bufnr = 0 }) end) | Format current buffer
&lt;leader&gt;gs | n | :Git | Open Git status (via Fugitive)
&lt;leader&gt;hp | n | :Gitsigns preview_hunk | Git preview hunks
&lt;leader&gt;tb | n | :Gitsigns toggle_current_line_blame | Git blame current line
&lt;leader&gt;C-F | n | :CellularAutomaton make_it_rain | Make it rain! duh!
K | n | vim.lsp.buf.hover() | Show documentation for symbol under cursor
gd | n | vim.lsp.buf.definition() | Go to definition
&lt;leader&gt;ca | n | vim.lsp.buf.code_action() | Trigger LSP code actions
&lt;leader&gt;[d | n | vim.diagnostic.goto_prev | Previous diagnostic
&lt;leader&gt;]d | n | vim.diagnostic.goto_next | Next diagnostic
&lt;leader&gt;z | n | vim.diagnostic.open_float | Show line diagnostics
:PresentStart | n | :PresentStart | Trigger markdown presentation

> More Git keymaps at: gitmaps.lua

## 👏 Thanks

- To [@ThePrimeagen](https://www.youtube.com/c/theprimeagen) to follow his tutorial [from 0 to LSP](https://www.youtube.com/watch?v=w7i4amO_zaE) - Oudated
- [LSP Zero](https://lsp-zero.netlify.app/docs/getting-started.html) for no more complex installations.

## 👤 Author

Danny Davila (@daikiejp)  
2025
