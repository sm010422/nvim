return {
  "petertriho/nvim-scrollbar",
  event = "BufReadPost", -- 플러그인이 로드될 시점 (이벤트 기반 로딩)
  config = function()
    require("scrollbar").setup({
      show = true,
      show_in_active_only = false,
      set_highlights = true,
      folds = 1000, -- 버퍼의 라인 수가 이 값을 초과하면 접기 기능 비활성화
      max_lines = false, -- 버퍼의 라인 수가 이 값을 초과하면 비활성화
      hide_if_all_visible = false, -- 모든 라인이 보일 경우 숨기기
      throttle_ms = 100,
      handle = {
        text = " ",
        blend = 30, -- 0부터 100 사이의 정수. 0은 불투명, 100은 완전히 투명. 기본값은 30.
        color = nil,
        color_nr = nil, -- cterm 색상
        highlight = "CursorColumn",
        hide_if_all_visible = true, -- 모든 라인이 보일 경우 핸들 숨기기
      },
      marks = {
        Cursor = {
          text = "•",
          priority = 0,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "Normal",
        },
        Search = {
          text = { "-", "=" },
          priority = 1,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "Search",
        },
        Error = {
          text = { "-", "=" },
          priority = 2,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "DiagnosticVirtualTextError",
        },
        Warn = {
          text = { "-", "=" },
          priority = 3,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "DiagnosticVirtualTextWarn",
        },
        Info = {
          text = { "-", "=" },
          priority = 4,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "DiagnosticVirtualTextInfo",
        },
        Hint = {
          text = { "-", "=" },
          priority = 5,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "DiagnosticVirtualTextHint",
        },
        Misc = {
          text = { "-", "=" },
          priority = 6,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "Normal",
        },
        GitAdd = {
          text = "┆",
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "GitSignsAdd",
        },
        GitChange = {
          text = "┆",
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "GitSignsChange",
        },
        GitDelete = {
          text = "▁",
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm 색상
          highlight = "GitSignsDelete",
        },
      },
      excluded_buftypes = {
        "terminal",
      },
      excluded_filetypes = {
        "cmp_docs",
        "cmp_menu",
        "noice",
        "prompt",
        "TelescopePrompt",
      },
      autocmd = {
        render = {
          "BufWinEnter",
          "TabEnter",
          "TermEnter",
          "WinEnter",
          "CmdwinLeave",
          "TextChanged",
          "VimResized",
          "WinScrolled",
        },
        clear = {
          "BufWinLeave",
          "TabLeave",
          "TermLeave",
          "WinLeave",
        },
      },
      handlers = {
        cursor = true,
        diagnostic = true,
        gitsigns = false, -- gitsigns가 필요함
        handle = true,
        search = false, -- hlslens가 필요함
        ale = false, -- ALE가 필요함
      },
    })
  end
}
