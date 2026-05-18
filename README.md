# nvim

> Personal Neovim configuration based on [LazyVim](https://lazyvim.org)

<a href="https://dotfyle.com/sm010422/nvim"><img src="https://dotfyle.com/sm010422/nvim/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/sm010422/nvim"><img src="https://dotfyle.com/sm010422/nvim/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/sm010422/nvim"><img src="https://dotfyle.com/sm010422/nvim/badges/plugin-manager?style=flat" /></a>

---

## Requirements

- Neovim >= 0.9
- Git
- [Nerd Font](https://www.nerdfonts.com/)
- Node.js (for LSP servers)
- ripgrep (for fzf/telescope)

## Install

```sh
git clone git@github.com:sm010422/nvim ~/.config/nvim
nvim  # lazy.nvim will auto-install plugins on first launch
```

To run alongside another config:

```sh
git clone git@github.com:sm010422/nvim ~/.config/sm010422/nvim
NVIM_APPNAME=sm010422/nvim nvim
```

---

## Colorscheme

[tokyonight-night](https://github.com/folke/tokyonight.nvim) with a custom pitch-black background (`#0a0a0f`).

---

## Language Support

| Language | LSP | Formatter | DAP |
|---|---|---|---|
| TypeScript / JavaScript | tsserver | prettier | — |
| Java | jdtls (nvim-java) | — | nvim-dap |
| Kotlin | kotlin_language_server | — | — |
| C# | Roslyn | — | — |
| C / C++ | clangd | — | — |
| Python | pyright | — | — |
| Tailwind CSS | tailwindcss-language-server | — | — |
| CSS | cssls | — | — |
| HTML | html | — | — |
| SQL | — | — | — |
| Markdown / JSON / YAML / TOML | — | prettier | — |

---

## Key Plugins

### Editor
- **[fzf-lua](https://github.com/ibhagwan/fzf-lua)** — fuzzy finder
- **[harpoon2](https://github.com/ThePrimeagen/harpoon)** — file bookmarks
- **[leap.nvim](https://github.com/ggandor/leap.nvim)** — fast cursor motion
- **[mini-files](https://github.com/echasnovski/mini.files)** — file explorer
- **[aerial.nvim](https://github.com/stevearc/aerial.nvim)** — code outline
- **[refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim)** — refactor operations
- **[dial.nvim](https://github.com/monaqa/dial.nvim)** — enhanced increment/decrement

### Git
- **[neogit](https://github.com/NeogitOrg/neogit)** — Magit-style git UI
- **[diffview.nvim](https://github.com/sindrets/diffview.nvim)** — diff viewer
- **[git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim)** — conflict resolver

### LSP & Completion
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** + **[mason.nvim](https://github.com/mason-org/mason.nvim)**
- **[inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim)** — live rename preview
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** — formatter
- **[noice.nvim](https://github.com/folke/noice.nvim)** — improved UI for messages & cmdline

### AI
- **Claude Code** (`lazyvim.plugins.extras.ai.claudecode`)
- **GitHub Copilot** (`lazyvim.plugins.extras.ai.copilot`) — disabled by default in `init.lua`

### UI
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** — tabline
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** — statusline
- **[snacks.nvim](https://github.com/folke/snacks.nvim)** — dashboard & utilities
- **[nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)** — scrollbar
- **[mini.animate](https://github.com/echasnovski/mini.animate)** + **smear-cursor** — smooth animations
- **[wakatime](https://github.com/wakatime/vim-wakatime)** — coding time tracking

### Misc
- **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)** — seamless pane navigation
- **[nvim-visual-multi](https://github.com/mg979/vim-visual-multi)** — multiple cursors
- **[nvim-surround](https://github.com/kylechui/nvim-surround)** — surround operations
- **[tabout.nvim](https://github.com/abecodes/tabout.nvim)** — tab out of brackets

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
