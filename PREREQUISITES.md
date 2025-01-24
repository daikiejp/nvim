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
