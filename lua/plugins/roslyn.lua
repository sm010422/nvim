return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {
      silent = true,
      filewatching = "off",
      extensions = {
        razor = { enabled = false },
      },
    },
    config = function(_, opts)
      vim.lsp.config("roslyn", {
        settings = {
          ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = false,
            dotnet_enable_tests_code_lens = false,
          },
          ["csharp|background_analysis"] = {
            dotnet_analyzer_diagnostics_scope = "openFiles",
          },
        },
      })
      require("roslyn").setup(opts)
    end,
  },
}
