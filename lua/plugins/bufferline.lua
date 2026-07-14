return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = function()
      local keys = {
        { "qh", "<Cmd>BufferLineMovePrev<CR>" },
        { "ql", "<Cmd>BufferLineMoveNext<CR>" },
        -- qh/ql로 바뀐 탭 순서와 어긋나지 않도록, bufferline이 보여주는 순서 그대로 이동
        {
          "<S-h>",
          function()
            require("bufferline").cycle(-1)
          end,
          desc = "Prev Buffer",
        },
        {
          "<S-l>",
          function()
            require("bufferline").cycle(1)
          end,
          desc = "Next Buffer",
        },
      }
      for i = 1, 9 do
        table.insert(keys, {
          "<leader>" .. i,
          function()
            local bufferline = require("bufferline")
            -- 크롬 탭 단축키와 동일하게: 1~8은 해당 탭이 있을 때만 이동, 9는 항상 마지막 탭
            if i < 9 and #bufferline.get_elements().elements < i then
              return
            end
            bufferline.go_to(i, true)
          end,
          desc = "Go to buffer tab " .. i,
        })
      end
      return keys
    end,
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
