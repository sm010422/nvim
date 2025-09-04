return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "qh", "<Cmd>BufferLineMovePrev<CR>" },
      { "ql", "<Cmd>BufferLineMoveNext<CR>" },
    },
    opts = {
      options = {
        indicator = { style = "underline" },
        -- diagnostics = "nvim_lsp", -- 쓰는 중이면 주석 해제
      },
      highlights = (function()
        local sel = "#1f2335" -- 선택된 버퍼 배경
        return {
          buffer_selected               = { bg = sel, bold = true },
          indicator_selected            = { bg = sel },
          separator_selected            = { bg = sel, fg = sel }, -- 경계선 끊김 제거
          modified_selected             = { bg = sel },

          -- 숫자/진단/아이콘도 동일 배경
          numbers_selected              = { bg = sel },
          diagnostic_selected           = { bg = sel },
          hint_selected                 = { bg = sel },
          info_selected                 = { bg = sel },
          warning_selected              = { bg = sel },
          error_selected                = { bg = sel },
          hint_diagnostic_selected      = { bg = sel },
          info_diagnostic_selected      = { bg = sel },
          warning_diagnostic_selected   = { bg = sel },
          error_diagnostic_selected     = { bg = sel },
          close_button_selected         = { bg = sel },

          -- (선택) 탭 UI도 쓰시면 같이 맞춤
          tab_selected                  = { bg = sel },
          tab_separator_selected        = { bg = sel, fg = sel },
        }
      end)(),
    },
  },
}
