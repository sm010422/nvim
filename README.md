<div align="center">

# ✦ nvim

**Personal Neovim configuration — fast, minimal, opinionated.**

*Based on [LazyVim](https://lazyvim.org) · Theme: [tokyonight-night](https://github.com/folke/tokyonight.nvim)*

<br/>

[![plugins](https://dotfyle.com/sm010422/nvim/badges/plugins?style=for-the-badge)](https://dotfyle.com/sm010422/nvim)
[![leaderkey](https://dotfyle.com/sm010422/nvim/badges/leaderkey?style=for-the-badge)](https://dotfyle.com/sm010422/nvim)
[![plugin-manager](https://dotfyle.com/sm010422/nvim/badges/plugin-manager?style=for-the-badge)](https://dotfyle.com/sm010422/nvim)

![Neovim](https://img.shields.io/badge/Neovim-0.9%2B-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-5.1-2C2D72?style=for-the-badge&logo=lua&logoColor=white)
![License](https://img.shields.io/github/license/sm010422/nvim?style=for-the-badge&color=1a1b27)

</div>

---

<!-- Replace with your own screen recording! -->
> **Demo GIF** — *Record yours with [vhs](https://github.com/charmbracelet/vhs) or [asciinema](https://asciinema.org) and drop it here.*
>
> ```
> nvim demo.gif placeholder
> ```

---

## Contents

- [Preview](#preview)
- [Requirements](#requirements)
- [Install](#install)
- [Colorscheme](#colorscheme)
- [Language Support](#language-support)
- [Key Plugins](#key-plugins)
- [Structure](#structure)

---

## Preview

<div align="center">

| Dashboard | Editor |
|:---------:|:------:|
| <img src="https://raw.githubusercontent.com/sm010422/nvim/main/.github/dashboard.png" alt="dashboard" width="400"/> | <img src="https://raw.githubusercontent.com/sm010422/nvim/main/.github/editor.png" alt="editor" width="400"/> |

> *No screenshots yet? Take them with `:lua Snacks.terminal()` and paste into `.github/`.*

</div>

---

## Requirements

| Tool | Version | Note |
|------|---------|------|
| [Neovim](https://neovim.io) | `>= 0.9` | Required |
| [Git](https://git-scm.com) | any | Plugin management |
| [Nerd Font](https://www.nerdfonts.com/) | any | Icons & glyphs |
| [Node.js](https://nodejs.org) | any | LSP servers |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | any | Fuzzy search |

---

## Install

**Standard install:**

```sh
git clone git@github.com:sm010422/nvim ~/.config/nvim
nvim  # lazy.nvim auto-installs plugins on first launch
```

**Run alongside another config:**

```sh
git clone git@github.com:sm010422/nvim ~/.config/sm010422/nvim
NVIM_APPNAME=sm010422/nvim nvim
```

---

## Colorscheme

[**tokyonight-night**](https://github.com/folke/tokyonight.nvim) with a custom pitch-black background (`#0a0a0f`).

<div align="center">

![tokyonight palette](https://raw.githubusercontent.com/folke/tokyonight.nvim/main/extras/tokyonight_night.png)

</div>

---

## Language Support

| Language | LSP | Formatter | DAP |
|:---------|:----|:----------|:----|
| TypeScript / JavaScript | `tsserver` | prettier | — |
| Java | `jdtls` (nvim-java) | — | nvim-dap |
| Kotlin | `kotlin_language_server` | — | — |
| C# | `Roslyn` | — | — |
| C / C++ | `clangd` | — | — |
| Python | `pyright` | — | — |
| Tailwind CSS | `tailwindcss-language-server` | — | — |
| CSS | `cssls` | — | — |
| HTML | `html` | — | — |
| Markdown / JSON / YAML / TOML | — | prettier | — |

---

## Key Plugins

<details>
<summary><b>Editor</b></summary>

| Plugin | Role |
|--------|------|
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder |
| [harpoon2](https://github.com/ThePrimeagen/harpoon) | File bookmarks |
| [leap.nvim](https://github.com/ggandor/leap.nvim) | Fast cursor motion |
| [mini-files](https://github.com/echasnovski/mini.files) | File explorer |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim) | Code outline |
| [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim) | Refactor operations |
| [dial.nvim](https://github.com/monaqa/dial.nvim) | Enhanced increment/decrement |

</details>

<details>
<summary><b>Git</b></summary>

| Plugin | Role |
|--------|------|
| [neogit](https://github.com/NeogitOrg/neogit) | Magit-style git UI |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Diff viewer |
| [git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim) | Conflict resolver |

</details>

<details>
<summary><b>LSP & Completion</b></summary>

| Plugin | Role |
|--------|------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP management |
| [inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim) | Live rename preview |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatter |
| [noice.nvim](https://github.com/folke/noice.nvim) | Improved UI for messages & cmdline |

</details>

<details>
<summary><b>AI</b></summary>

| Plugin | Role |
|--------|------|
| Claude Code (`lazyvim.plugins.extras.ai.claudecode`) | AI coding assistant |
| GitHub Copilot (`lazyvim.plugins.extras.ai.copilot`) | Inline completions *(disabled by default)* |

</details>

<details>
<summary><b>UI</b></summary>

| Plugin | Role |
|--------|------|
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Tabline |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Dashboard & utilities |
| [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) | Scrollbar |
| [mini.animate](https://github.com/echasnovski/mini.animate) + smear-cursor | Smooth animations |
| [wakatime](https://github.com/wakatime/vim-wakatime) | Coding time tracking |

</details>

<details>
<summary><b>Misc</b></summary>

| Plugin | Role |
|--------|------|
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Seamless pane navigation |
| [vim-visual-multi](https://github.com/mg979/vim-visual-multi) | Multiple cursors |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Surround operations |
| [tabout.nvim](https://github.com/abecodes/tabout.nvim) | Tab out of brackets |

</details>

---

## Structure

```
nvim/
├── init.lua              # entry point
├── lazyvim.json          # LazyVim extras
├── lazy-lock.json        # plugin lockfile
└── lua/
    └── plugins/          # plugin overrides & custom configs
```

---

<div align="center">

*Made with ♥ and too many late nights*

</div>
