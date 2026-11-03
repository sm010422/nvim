return {
  "petertriho/nvim-scrollbar",
  -- v2는 2026-11-16 전까지 refactor/v2 브랜치에 있음. 그 이후엔 이 branch 줄을 지우면 됨
  branch = "refactor/v2",
  event = "BufReadPost", -- 플러그인이 로드될 시점 (이벤트 기반 로딩)
  opts = {
    set_highlights = true,
    exclude = {
      -- 키 테이블 형식은 기본값에 추가됨 (리스트 형식은 기본값을 대체)
      buftypes = { terminal = true },
      filetypes = {
        cmp_docs = true,
        cmp_menu = true,
        noice = true,
        prompt = true,
        TelescopePrompt = true,
      },
    },
    providers = {
      cursor = true,
      diagnostic = true,
      gitsigns = false,
      search = false, -- v2는 hlslens 없이 기본 / ? 검색을 지원함
      ale = false,
    },
    marks = {
      Cursor = { text = "•", priority = 0, highlight = "Normal" },
      Search = { text = { "-", "=" }, priority = 1, highlight = "Search" },
      Error = { text = { "-", "=" }, priority = 2, highlight = "DiagnosticVirtualTextError" },
      Warn = { text = { "-", "=" }, priority = 3, highlight = "DiagnosticVirtualTextWarn" },
      Info = { text = { "-", "=" }, priority = 4, highlight = "DiagnosticVirtualTextInfo" },
      Hint = { text = { "-", "=" }, priority = 5, highlight = "DiagnosticVirtualTextHint" },
      Misc = { text = { "-", "=" }, priority = 6, highlight = "Normal" },
      GitAdd = { text = "┆", priority = 7, highlight = "GitSignsAdd" },
      GitChange = { text = "┆", priority = 7, highlight = "GitSignsChange" },
      GitDelete = { text = "▁", priority = 7, highlight = "GitSignsDelete" },
    },
    scrollbar = {
      show = true,
      visibility = "all", -- v1의 show_in_active_only = false
      unit = "screenline", -- 접힌 줄/줄바꿈 반영 (v1의 folds 대체)
      max_lines = false, -- 버퍼의 라인 수가 이 값을 초과하면 비활성화
      hide_if_all_visible = false, -- 모든 라인이 보일 경우 숨기기
      throttle_ms = 100,
      thumb = {
        text = " ",
        blend = 30, -- 0부터 100 사이의 정수. 0은 불투명, 100은 완전히 투명
        highlight = "CursorColumn",
        hide_if_all_visible = true, -- 모든 라인이 보일 경우 핸들 숨기기
      },
    },
  },
}
