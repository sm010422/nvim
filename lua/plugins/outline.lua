return {
  {
    "hedyhli/outline.nvim",
    keys = { { "<leader>cs", "<cmd>Outline<CR>", desc = "Toggle Outline" } },
    cmd = { "Outline", "OutlineOpen" },
    opts = {
      outline_window = {
        position = "right",
      },
    },
  },
}
