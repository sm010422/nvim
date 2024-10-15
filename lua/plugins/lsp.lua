return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- 기존 서버 설정에 ruff 서버 추가
      opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
        ruff = {
          mason = false,
          autostart = false,
        },
      })

      -- LSP keymaps 추가
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      vim.list_extend(keys, {
        {
          "gd",
          function()
            -- DO NOT REUSE WINDOW
            require("telescope.builtin").lsp_definitions({ reuse_win = false })
          end,
          desc = "Goto Definition",
          has = "definition",
        },
      })
    end,
  },
}
