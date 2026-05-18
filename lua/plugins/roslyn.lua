return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    opts = {
      silent = false,
      filewatching = "off",
      extensions = {
        razor = { enabled = false },
      },
    },
    init = function()
      -- LSP 클라이언트 시작 전에 settings 적용 (타이밍 보장)
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
    end,
    config = function(_, opts)
      require("roslyn").setup(opts)

      -- signs.text(LazyVim 아이콘)는 유지하고 severity 필터만 추가
      local cfg = vim.diagnostic.config() or {}
      local signs = type(cfg.signs) == "table" and vim.deepcopy(cfg.signs) or {}
      signs.severity = { min = vim.diagnostic.severity.WARN }
      vim.diagnostic.config({
        virtual_text = { severity = { min = vim.diagnostic.severity.WARN } },
        signs = signs,
        underline = { severity = { min = vim.diagnostic.severity.WARN } },
      })
    end,
  },
  -- fzf-lua extra가 gd/gr을 FzfLua lsp_definitions로 전역 오버라이드함.
  -- roslyn이 roslyn-source-generated:// URI를 반환할 때 fzf-lua가 처리 못해 빈 버퍼가 생김.
  -- Snacks.keymap은 ID 역순(최신 우선)으로 키맵을 적용하므로,
  -- servers["*"] 보다 나중에 등록되는 servers.roslyn 키맵이 자동으로 우선순위를 가짐.
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        roslyn = {
          -- roslyn은 plugin/roslyn.lua에서 직접 vim.lsp.enable()을 호출하므로
          -- lspconfig가 다시 enable하지 않도록 막음
          enabled = false,
          keys = {
            -- gd: roslyn-source-generated:// URI는 fzf-lua가 처리 못하므로 vim.lsp.buf 사용
            { "gd", vim.lsp.buf.definition, desc = "Goto Definition", has = "definition" },
            -- gr/gI/gy: 프로젝트 경로에 '#'이 포함되면 fzf-lua가 file:// URI 생성 시
            -- '#'을 fragment로 해석해 경로가 잘림 → _uri=false로 오버라이드
            {
              "gr",
              function()
                require("fzf-lua").lsp_references({
                  jump1 = true, ignore_current_line = true, _uri = false,
                })
              end,
              desc = "References", nowait = true,
            },
            {
              "gI",
              function()
                require("fzf-lua").lsp_implementations({
                  jump1 = true, ignore_current_line = true, _uri = false,
                })
              end,
              desc = "Goto Implementation",
            },
            {
              "gy",
              function()
                require("fzf-lua").lsp_typedefs({
                  jump1 = true, ignore_current_line = true, _uri = false,
                })
              end,
              desc = "Goto T[y]pe Definition",
            },
          },
        },
      },
    },
  },

  {
    "GustavEikaas/easy-dotnet.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
    config = function()
      require("easy-dotnet").setup()
    end,
  },
}
