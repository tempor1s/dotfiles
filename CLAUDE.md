# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles repository using oh-my-zsh with Antigen for plugin management. Based on the Shopify internal dotfiles template.

## Structure

- `core/` - Shared configurations (environment, macOS settings, utils, default zsh bundles)
- `personal/` - User-specific overrides and customizations
- `.zshrc` - Main entrypoint, sources files in order: core → personal → extra.zsh
- `install.sh` - Main installer, symlinks configs and runs `personal/install.sh`

## Installation

```bash
./install.sh
```

This symlinks `.zshrc`, `.gitconfig`, and `.gitignore_global` to home directory, then runs `personal/install.sh` for additional setup.

## Load Order

Files are sourced in this order (last definition wins):
1. `core/environment.zsh` → `personal/environment.zsh`
2. `core/macos.zsh` → `personal/macos.zsh` (macOS only)
3. `core/default_bundles.zsh` → `personal/antigen_bundles.zsh`
4. `core/utils.zsh`
5. `personal/dircolors` (if exists)
6. `personal/custom.zsh`
7. `~/extra.zsh` (local-only, unversioned)

## Key Files

- `personal/install.sh` - Custom installation steps (brew packages, config symlinks)
- `personal/custom.zsh` - Final customizations, overrides everything
- `personal/claude/` - Claude Code settings (symlinked to `~/.claude/`)
