-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd([[Copilot disable]])

vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    vim.b.autoformat = false
  end,
})
