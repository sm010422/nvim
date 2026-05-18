-- return {
--   "mfussenegger/nvim-dap",
--   config = function()
--     -- nvim-dap 설정 예시
--     require("dap").set_log_level("TRACE") -- 디버그 로그 레벨 설정
--   end,
-- }
return {
  {
    -- DAP Client
    "mfussenegger/nvim-dap",
    lazy = true,
    dependencies = {
      -- DAP Client UI
      "rcarriga/nvim-dap-ui",
      -- DAP Adapter
      "mxsdev/nvim-dap-vscode-js",
      -- Debugger
      {
        "microsoft/vscode-js-debug",
        version = "1.x",
        -- 커맨드 꼭 이대로 사용하기
        build = "npm i && npm run compile vsDebugServerBundle && mv dist out",
      },
    },
    -- TODO: `keys = { ... }` 는 Lua vararg expression으로 의도한 키맵이 아님.
    -- 실제 사용할 키맵을 정의하거나 keys 항목 자체를 제거 필요.
    -- 예: keys = { { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" } }
    keys = { ... },
    -- DAP Adater 설정
    config = function()
      require("dap-vscode-js").setup({
        -- TODO: macOS + LazyVim 환경에 맞게 경로 수정 필요.
        -- 권장: vim.fn.stdpath("data") .. "/lazy/vscode-js-debug"
        debugger_path =         -- vscode-js-debug의 `절대 경로`. 꼭 직접 확인 후 설정해주셔야 합니다.
"/home/{user}/.local/share/lunarvim/site/pack/lazy/opt/vscode-js-debug",
        -- 사용하고자 하는 어댑터.
        adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
      })
      require("dapui").setup()
    end,
  },
}
