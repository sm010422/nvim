return {
  "crusj/bookmarks.nvim",
  keys = {
    { "qq", mode = { "n" } },
  },
  branch = "main",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  config = function()
    require("bookmarks").setup()
    require("telescope").load_extension("bookmarks")
  end,
}
