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
git clone https://github.com/gaorunzhao/dotfiles.git && cd dotfiles
```

Equip your terminal with zsh and [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) framework:

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

## TODOs

- [ ] Fix vimrc configuration
- [ ] Add macrc configuration
- [ ] Switch iTerm2 to use a different color scheme

## Acknowledgments

Heavily inspired by [Mathias Bynens](https://mathiasbynens.be/) and all the contributors to his [dotfiles](https://github.com/mathiasbynens/dotfiles).
