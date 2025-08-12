# TL;DR

Helps to set up a productive development environment.

## 🚀 Quick Start

### Prerequisites

Install [Homebrew](http://brew.sh/) first:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Installation

1. Clone this repository:
```bash
git clone <repo-url> ~/.config/got-cli
cd ~/.config/got-cli
```

2. Run the setup script:
```bash
./set_dot.sh
```

3. Reload your shell:
```bash
source ~/.zshrc
```

## 📁 What's Included

### Core Configuration Files
- **`.zshrc`** - Main shell configuration with history, PATH, and module loading
- **`.aliases`** - General purpose aliases for common commands
- **`.aliases_git`** - Git-specific aliases for efficient version control
- **`.functions`** - Custom shell functions for advanced workflows
- **`.macos`** - macOS-specific settings and Homebrew configuration

### Specialized Configurations
- **`.runtimes`** - Runtime managers (mise, asdf, pyenv, OrbStack)
- **`.cloud`** - AWS and cloud service configurations
- **`.agent`** - AI agent configurations (Claude, Anthropic)

## 🛠️ Key Features

### Git Productivity
- **50+ Git aliases** for faster workflows (`g:s`, `g:a`, `g:c`, etc.)
- **Branch management** functions for creating local copies of remote branches
- **Smart commit helpers** and merge utilities

### Shell Enhancements
- **Custom functions** for file operations, archiving, and system management
- **Port management** with process killing capabilities
- **Development tools** integration (editors, runtimes)

### Editor Integration
- **Multi-editor support**: Cursor (`e`), VSCode (`ec`), Zed (`ez`)
- **Project-aware** configurations

## 📋 Essential Aliases & Functions

### Quick Reference
```bash
# General
c          # clear screen
u          # cd ..
e          # open current directory in Cursor
pm 3000    # manage processes on port 3000

# Git shortcuts
g:s        # git status
g:a .      # git add .
g:c        # git commit
g:ps       # git push
g:br.      # create local copies of all remote branches

# File operations
.fn:d      # make directory and enter it
.fn:a      # create archives
.fn:a:x    # extract archives
```

### Function Highlights
- **`.fn:g:br.`** - Automatically create local tracking branches for all remote branches
- **`.fn:g:clean`** - Find unused files in git repositories
- **`port_manager`** - Advanced port management with process termination
- **`.fn:c:mp4`** - Batch convert .mov files to .mp4

## 🏗️ Recommended Software

### Essential Development Tools
```bash
# Core development
brew install git gh starship fzf direnv mise
brew install curl wget htop tree jq

# Editors & IDEs
brew install --cask cursor visual-studio-code zed

# Terminal & Shell
brew install --cask iterm2 raycast
```

### Optional Productivity Tools
```bash
# Communication & Collaboration
brew install --cask slack discord zoom

# Browsers & Media
brew install --cask brave-browser firefox spotify

# Utilities
brew install --cask 1password kap sip
```

## 🔧 Customization

### Adding Your Own Aliases
Edit the appropriate file:
- General aliases: `.aliases`
- Git aliases: `.aliases_git` 
- Runtime-specific: `.aliases_runtimes`

### Creating Custom Functions
Add new functions to `.functions` following the naming convention:
```bash
.fn:category:name () {
    # Your function code here
}
```

## 🚀 Advanced Features

### Runtime Management
Supports multiple runtime managers:
- **mise** (recommended)
- **asdf** (legacy support)
- **pyenv** (Python-specific)

### Cloud Integration
- AWS SSO authentication helpers
- Profile management for multiple environments
- Certificate handling for corporate networks

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Test your changes thoroughly
4. Submit a pull request

## 📄 License

[Add your license here]

---

> **Tip**: Run `.fn` to see all available custom functions, or `alias` to view all loaded aliases.