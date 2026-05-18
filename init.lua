-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- TODO: lazy.nvim 로드 직후라 Copilot 플러그인이 아직 로드되지 않아 효과 없을 수 있음.
-- VimEnter autocmd 안으로 이동하거나 Copilot 플러그인 opts에 enabled = false 사용 권장.
vim.cmd([[Copilot disable]])

vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    vim.b.autoformat = false
  end,
})

local function sepfix()
  local hl = { fg = "#3b4261", bg = "NONE", bold = false }
  vim.api.nvim_set_hl(0, "WinSeparator", hl)
  vim.api.nvim_set_hl(0, "VertSplit", { link = "WinSeparator" })
end

sepfix()
vim.api.nvim_create_autocmd("ColorScheme", { callback = sepfix })

vim.o.termguicolors = true

local ok, tn = pcall(require, "tokyonight")
if ok then
  -- style에 맞는 팔레트 모듈을 불러와 '테이블 자체'를 수정
  local palette = require("tokyonight.colors.night")  -- <-- night 스타일이면 night
  palette.bg       = "#0a0a0f"
  palette.bg_dark  = "#05050a"
  palette.bg_dark1 = "#000000"

  tn.setup({
    style = "night",
    transparent = false,
  })
  vim.cmd.colorscheme("tokyonight")
end
