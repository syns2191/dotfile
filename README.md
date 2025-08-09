# Dotfiles

This repository contains my personal dotfiles, managed to keep my development environment consistent across different machines.

## Structure

The dotfiles are organized by application or tool, making it easy to navigate and manage specific configurations.

### `aerospace/`
Contains the configuration for [Aerospace](https://aerospace.js.org/), a tiling window manager for macOS.
- `aerospace.toml`: Main configuration file for Aerospace, defining keybindings, layouts, and rules.

### `ghostty/`
Houses the configuration for [Ghostty](https://ghostty.sh/), a GPU-accelerated terminal emulator.
- `config`: Primary configuration file for Ghostty.
- `ghostty.toml`: Additional configuration settings.
- `themes/`: Directory containing custom color themes for Ghostty, such as `cyberdream`, `cyberdream-light`, and `dracula`.

### `nvim/`
My Neovim configuration, built upon [LazyVim](https://www.lazyvim.org/).
- `init.lua`: The entry point for Neovim configuration.
- `lua/config/`: Contains core configuration files:
    - `autocmds.lua`: Auto commands for various events.
    - `keymaps.lua`: Custom key mappings.
    - `lazy.lua`: Lazy.nvim plugin manager configuration.
    - `options.lua`: Global Neovim options.
- `lua/plugins/`: Directory for custom plugin configurations and overrides, including:
    - `colorschema.lua`: Color scheme settings.
    - `copilot.lua`: GitHub Copilot integration.
    - `lsp.lua`: Language Server Protocol (LSP) client setup.
    - `neogit.lua`: Neogit (Git UI) configuration.
    - `termtoogle.lua`: Terminal toggling setup.
    - `tmux-navigator.lua`: Integration with tmux for seamless pane navigation.
    - Other specific plugin configurations like `gitblame.lua`, `visualmulti.lua`, etc.

### `tmux/`
Configuration for [tmux](https://github.com/tmux/tmux/wiki), a terminal multiplexer.
- `.tmux.conf`: The main configuration file for tmux, defining keybindings, status bar, and other session settings.
