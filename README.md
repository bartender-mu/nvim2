# NeoVim for Web Development & Software Development Setup Guide

## Overview

Thanks for checking out my NeoVim config. For a full walkthrough please checkout the tutorial episodes below. Supported languages & frameworks:
`typescript`, `javascript`, `python`, `golang`, `lua`, `bash`, `c`, `c++`, `json`, `yaml`, `docker`, `html`, `css`, `tailwindcss`, `rust`, `solidity`, `vue`, `react`, `svelte`

## YouTube Tutorial

Part 1: Options, Keymaps & Plugins ([link](https://youtu.be/cdAMq2KcF4w))  
Part 2: LSP, Linters, Formatters, AI Assistance, Completion ([link](https://youtu.be/qp1OcolI6x0))  
Part 3: TMUX, Git & Debugging ([link](https://youtu.be/JN4Zbs0ypwM))

## Keymaps

| Shortcut          | Description                                |
| ----------------- | ------------------------------------------ |
| `<leader>e`       | Toggle File Explorer                       |
| `<leader>q`       | Close buffer                               |
| `<leader>l`       | Next buffer                                |
| `<leader>h`       | Previous buffer                            |
| `<leader>\|`      | Split window vertically                    |
| `<leader>-`       | Split window horizontally                  |
| `<leader>s*`      | Replace all instances of word under cursor |
| `<leader>ec`      | Edit Neovim config                         |
| `<leader>s`       | Save file                                  |
| `<leader>Q`       | Quit without saving                        |
| `<leader>wq`      | Save and quit all buffers                  |
| `n`               | Next search result (centered)              |
| `N`               | Previous search result (centered)          |
| `<C-d>`           | Half page down (centered)                  |
| `<C-u>`           | Half page up (centered)                    |
| `<C-h/j/k/l>`     | Move between windows                       |
| `<C-Up/Down>`     | Increase/Decrease window height            |
| `<C-Left/Right>`  | Increase/Decrease window width             |
| `<`               | Indent left and reselect (visual mode)     |
| `>`               | Indent right and reselect (visual mode)    |
| `J`               | Join lines and keep cursor position        |
| `<leader>tg`       | Toggle LazyGit                             |
| `<leader>o`        | Toggle Symbols Outline                     |
| `<C-a>`            | Ask opencode (generate/chat)               |
| `<C-x>`            | Execute opencode action (review/fix/etc.)  |
| `<C-.>`            | Toggle opencode terminal                   |

## AI Integration

This configuration uses `NickvanDyke/opencode.nvim` to integrate with opencode, an AI coding agent for research, reviews, and code tasks.

To use this feature, ensure opencode CLI is installed (e.g., via `npm install -g opencode`). The plugin auto-connects to running opencode instances or manages one in Neovim's terminal. No API keys required.

For setup details, see the plugin's documentation at https://github.com/NickvanDyke/opencode.nvim.

## Language Server Installation

To enable advanced language features like "go to definition," auto-completion, and diagnostics, you need to install the respective Language Servers (LSPs) for the languages you work with.

**Prerequisites:**
*   **Node.js & npm:** Many LSPs are distributed via `npm`. Ensure Node.js is installed (download from [nodejs.org](https://nodejs.org/)).
*   **Python & pip:** For Python-related tools. Download from [python.org](https://www.python.org/).
*   **Composer:** For PHP tools. (Optional, `npm` is also an option for `intelephense`).

### Recommended LSP Installations:

#### 1. `pyright` (for Python)
```bash
npm install -g pyright
```

#### 2. `intelephense` (for PHP)
```bash
npm install -g intelephense
# Alternatively via Composer:
# composer global require intelephense/intelephense
```

#### 3. `bashls` (for Bash/Shell)
```bash
npm install -g bash-language-server
```

#### 4. `ansiblels` (for Ansible)
```bash
npm install -g ansible-language-server
# Alternatively via pip:
# pip install 'ansible-language-server[ansible]'
```

**After Installation:**
Restart Neovim. The LSP client should automatically detect and connect to the installed servers.

## Requires Neovim >= 0.11.3

Please make sure you're on at least version **v0.11.3** of NeoVim.

## Forking/Template/Contributing

Feel free to use this config as a template. Contributions are welcome especially for additional languages.

Please feel free to assist others in the issues tab!

## License

This config is released under GPLv3.
