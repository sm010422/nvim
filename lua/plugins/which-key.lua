  return {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.icons = {
        rules = {
          { pattern = "copilot", icon = LazyVim.config.icons.kinds.Copilot, color = "orange" }
        }
      }
    end,
  }
