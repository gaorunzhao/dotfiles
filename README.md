# Dotfiles

This repository contains my personal dotfiles, forked from [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles).

> ⚠️ **Warning:** Review the code before using it. Use at your own risk!

### Setup

Prerequisites

- [Git](https://git-scm.com/)
- Bash
- Optional: [iTerm2](https://www.iterm2.com/) (for macOS)

Clone the repository:

```bash
git clone git@code.alipay.com:gaorunzhao.grz/dotfiles.git && cd dotfiles
```

Equip your terminal with zsh and [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) framework:

- Theme: [headline](https://github.com/Moarram/headline)
- Plugins: [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [you-should-use](https://github.com/Moarram/you-should-use)

```bash
source omz.sh
```

Install useful dependencies via [Homebrew](https://brew.sh/):

```bash
source brew.sh
```

Change your workflow:

```bash
source bootstrap.sh
```

## Acknowledgments

Heavily inspired by [Mathias Bynens](https://mathiasbynens.be/) and all the contributors to his [dotfiles](https://github.com/mathiasbynens/dotfiles).
