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
| `<C-h/j/k/l>`     | Move between windows                       |
| `<C-Up/Down>`     | Increase/Decrease window height            |
| `<C-Left/Right>`  | Increase/Decrease window width             |
| `<leader>tg`       | Toggle LazyGit                             |
| `<leader>o`        | Toggle Symbols Outline                     |
| `<leader>gg`       | Generate code (Gemini)                     |
| `<leader>gc`       | Chat with Gemini                           |
| `<leader>ge`       | Edit code with Gemini                      |

## AI Integration

This configuration uses `kiddos/gemini.nvim` to integrate with Google's Gemini models for AI-powered code generation and editing.

To use this feature, you must:
1. Obtain a Google AI API key.
2. Set the `GOOGLE_API_KEY` environment variable in your shell configuration (e.g., `.bashrc`, `.zshrc`).

Example:
```bash
export GOOGLE_API_KEY="your-api-key-here"
```

## Requires Neovim >= 0.11.3

Please make sure you're on at least version **v0.11.3** of NeoVim.

## Forking/Template/Contributing

Feel free to use this config as a template. Contributions are welcome especially for additional languages.

Please feel free to assist others in the issues tab!

## License

This config is released under GPLv3.
