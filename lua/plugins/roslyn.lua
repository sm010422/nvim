return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {
      silent = false,
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

      -- info 레벨 가상 텍스트 숨기기
      vim.diagnostic.config({
        virtual_text = {
          severity = { min = vim.diagnostic.severity.WARN },
        },
      })
    end,
  },
}
