# 🧰 Prerequisites

- Homebrew
- Git
- Neovim (0.11 recommended)
- Node
- Ripgrep
- fd

```bash
## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Git
brew install git

## Neovim
brew install neovim

## Node (for Tree-sitter and LSP)
brew install node

## ripgrep (for Telescope)
brew install ripgrep

## fd (for Telescope)
brew install fd

## gcc, clang and make (for Telescope-fzf dependencies)
brew install gcc clang make
```

## LSP dependencies

| Language | Name | Package install |
| -- | -- | -- |
| lua | lua_ls | brew install lua-language-server |
| python | pyright | brew install pyright |
| javascript/typescript | ts_ls (tsserver deprecated) | brew install typescript-language-server |
| eslint | eslint | brew install vscode-langservers-extracted |
| html | html | (same as above) |
| css | cssls | (same as above) |
| json | jsonls | (same as above) |
| markdown | marksman  | brew install marksman |
| yaml | yamlls | brew install yaml-language-server |
｜tailwind | tailwindcss| brew install tailwindcss-language-server |
| astro | astro | pnpm install -g typescript & pnpm install -g @astrojs/language-server |

> Note - If some npm package is uninstalled. Need install brew package again.

### Conform Formatter

| Language | Name | Package install |
| -- | -- | -- |
| lua | stylua | brew install stylua |
| python | isort | brew install isort |
| python | black | brew install black |
| javascript | prettierd / prettier | brew install prettierd / prettier |
| typescript | (same as above) | (same as above) |
| javascriptreact | (same as above) | (same as above) |
| typescriptreact | (same as above) | (same as above) |
| ["javascript.jsx"] | (same as above) | (same as above) |
| ["typescript.tsx"] | (same as above) | (same as above) |
| markdown | (same as above) | (same as above) |
| html | (same as above) | (same as above) |
| css | (same as above) | (same as above) |
| yaml | (same as above) | (same as above) |
| json | (same as above) | (same as above) |


