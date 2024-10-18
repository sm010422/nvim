return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    opts = {
      show_prompt = false, -- show_prompt 옵션을 false로 설정
      highlights = {
        enabled = true,
        statusline = {
          focused = {
            fg = "#ededed",
            bg = "#e35e4f",
            bold = true,
          },
          unfocused = {
            fg = "#ededed",
            bg = "#FFB266",
            bold = true,
          },
        },
        winbar = {
          focused = {
            fg = "#ededed",
            bg = "#e35e4f",
            bold = true,
          },
          unfocused = {
            fg = "#ededed",
            bg = "#FFB266",
            bold = true,
          },
        },
      },
    },
    config = function(_, opts)
      require("window-picker").setup(opts) -- opts 인자를 전달
    end,
  },
}
