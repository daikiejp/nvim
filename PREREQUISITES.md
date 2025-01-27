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
```bash
| Language | Name | Package install |
| -- | -- | -- |
| lua | lua_ls | brew install lua-language-server |
| python | pyright | brew install pyright |
| javascript/typescript | ts_ls (tsserver deprecated) | brew install typescript-language-server |
| eslint | eslint | brew install vscode-langservers-extracted |
| html | html | (same above) |
| css | cssls | (same above) |
| json | jsonls | (sabe above) |
| markdown | marksman  | brew install marksman |
| yaml | yamlls | brew install yaml-language-server |

# Note - If some npm package is uninstalled. Need install brew package again.
```
