return {
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      -- 플러그인 설정
      require("git-conflict").setup({
        default_mappings = true,
        default_commands = true,
        disable_diagnostics = false,
        list_opener = "copen",
        highlights = {
          incoming = "DiffAdd",
          current = "DiffText",
        },
        debug = false,
      })

      -- 사용자 정의 키맵핑 추가
      vim.keymap.set(
        "n",
        "<leader>co",
        "<Plug>(git-conflict-ours)",
        { noremap = true, silent = true, desc = "Git-conflict-ours" }
      )
      vim.keymap.set(
        "n",
        "<leader>ct",
        "<Plug>(git-conflict-theirs)",
        { noremap = true, silent = true, desc = "Git-conflict-theirs" }
      )
      vim.keymap.set(
        "n",
        "<leader>cb",
        "<Plug>(git-conflict-both)",
        { noremap = true, silent = true, desc = "Git-conflict-both" }
      )
      vim.keymap.set(
        "n",
        "<leader>c0",
        "<Plug>(git-conflict-none)",
        { noremap = true, silent = true, desc = "Git-conflict-none" }
      )
      -- vim.keymap.set("n", "[x", "<Plug>(git-conflict-prev-conflict)", { noremap = true, silent = true, desc = "Git-conflict-prev-conflict" })
      -- vim.keymap.set("n", "]x", "<Plug>(git-conflict-next-conflict)", { noremap = true, silent = true, desc = "Git-conflict-next-conflict" })
    end,
  },
}
