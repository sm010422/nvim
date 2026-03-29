return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        -- 1. 애니메이션 비활성화
        animate = { enabled = false },

        -- 2. 왼쪽 패널 (Database)
        left = {
          {
            title = "Database",
            ft = "dbui",
            pinned = true,
            size = { width = 40 }, 
          },
        },

        -- 3. 오른쪽 패널
        right = {
          { title = "Outline", ft = "Outline", pinned = true, size = { width = 30 } },
          { title = "Aerial", ft = "aerial", pinned = true, size = { width = 30 } },
        },

        options = {
        },

        wo = {
          winfixwidth = false,
          winfixheight = false,
        },
      }
    end,
  },
}
