-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader>A", require("lspimport").import, { noremap = true })
-- keymaps.lua

-- 예: vim.keymap.set("n", "<leader>x", "function_name", { noremap = true, silent = true, desc = "Description" })

-- Copilot 끄기
vim.keymap.set("n", "<leader>ba", function()
  vim.cmd("Copilot disable")
  vim.notify("Copilot Disabled", vim.log.levels.INFO)
end, { desc = "Copilot Disable" })

-- Copilot 켜기
vim.keymap.set("n", "<leader>bA", function()
  vim.cmd("Copilot enable")
  vim.notify("Copilot Enabled", vim.log.levels.INFO)
end, { desc = "Copilot Enable" })

-- java-creator-nvim 
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function(a)
    local ok, wk = pcall(require, "which-key"); if not ok then return end
    wk.add({ { "<leader>j", group = "Java New" } }, { mode = "n", buffer = a.buf })
  end,
})
