return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      "nvim-mini/mini.pick", -- optional
    },
    config = true,
    -- TODO: keymap이 plugin spec 테이블 안에 직접 배치되어 있어 neogit 로드 전 startup 시 즉시 실행됨.
    -- keys = { { "<leader>gN", "<cmd>Neogit<CR>", desc = "Neogit" } } 으로 이동하거나
    -- config 함수 안에서 vim.keymap.set 호출 필요.
    vim.keymap.set("n", "<leader>gN", ":Neogit<CR>", { noremap = true, silent = true, desc = "Neogit" }),
  },
}
