return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.icons = opts.icons or {}
      if opts.icons.rules == false then
        opts.icons.rules = {}
      end
      opts.icons.rules = opts.icons.rules or {}
      opts.icons.mappings = (opts.icons.mappings ~= false)

      -- 기존 Copilot 규칙 유지
      table.insert(opts.icons.rules, {
        pattern = "[Cc]opilot",
        icon = LazyVim.config.icons.kinds.Copilot,
        color = "orange",
      })

      -- Java (단어 경계로 Java만 매칭하고 싶으면 이 줄로, 아니면 [Jj]ava 그대로 두셔도 됩니다)
      table.insert(opts.icons.rules, {
        pattern = "%f[%a][Jj]ava%f[^%a]", -- ← 'Java'만 매칭 (선택)
        icon = LazyVim.config.icons.kinds.Class,
      })

      -- Keywordprg / LSP Import
      table.insert(opts.icons.rules, {
        pattern = "[Kk]eywordprg",
        icon = LazyVim.config.icons.kinds.Keyword,
      })

      return opts
    end,
  },
}
