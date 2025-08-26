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
