-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd([[Copilot disable]])

vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.o.termguicolors = true

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
