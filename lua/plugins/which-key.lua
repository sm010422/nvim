return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      -- 기존 icons 설정 보존
      opts.icons = opts.icons or {}
      -- rules=false 방지 후 테이블 보장
      if opts.icons.rules == false then
        opts.icons.rules = {}
      end
      opts.icons.rules = opts.icons.rules or {}

      -- ✅ 기존 Copilot 규칙 유지(대소문자 모두 매칭)
      table.insert(opts.icons.rules, {
        pattern = "[Cc]opilot",
        icon = LazyVim.config.icons.kinds.Copilot,
        color = "orange",
      })

      -- ✅ Java 관련 desc/group에 devicons(Java) 아이콘 자동 부착
      -- (mini.icons가 devicons를 mock하므로 그대로 동작)
      table.insert(opts.icons.rules, {
        pattern = "[Jj]ava",
        icon = LazyVim.config.icons.kinds.Class,
      })

      return opts
    end,
  },
}
