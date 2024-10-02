return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          mason = false,
          autostart = false,
        },
      },
    },
  },
}
