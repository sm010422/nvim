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

    vim.keymap.set("n", "<leader>gN", ":Neogit<CR>", { noremap = true, silent = true, desc = "Neogit" }),
  },
}
