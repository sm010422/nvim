return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- 1. 미끄러지는 창 애니메이션 끄기
      opts.animate = {
        enabled = false,
      }

      -- 2. 오른쪽 패널 덮어쓰기 (기본 설정 무시하고 깔끔하게 초기화)
      opts.right = {
        {
          title = "Outline",
          ft = "Outline",
          pinned = true,
        },
        {
          title = "Aerial",
          ft = "aerial",
          pinned = true,
        },
      }

      -- 3. 왼쪽 패널 덮어쓰기 (Database만 단독으로 배치)
      opts.left = {
        {
          title = "Database",
          ft = "dbui",
          pinned = true,
        },
      }
    end
  }
}
