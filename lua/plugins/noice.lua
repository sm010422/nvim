return {
  {
    "folke/noice.nvim",
    opts = {
      -- 기본 UI 변경 방지
      cmdline = {
        enabled = true,
      },
      messages = {
        enabled = true,
      },
      popupmenu = {
        enabled = true,
      },
      -- jdtls progress 무시
      routes = {
        {
          filter = {
            event = "lsp",
            kind = "progress",
            find = "jdtls",
          },
          opts = { skip = true },
        },

        {
          filter = {
            event = "notify",
            find = "copilot is disabled",
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "notify",
            find = "copilot is offline",
          },
          opts = { skip = true },
        },
      },
    },
  },
}
