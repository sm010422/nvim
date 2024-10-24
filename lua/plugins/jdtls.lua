-- return {
--   {
--     "mfussenegger/nvim-jdtls",
--     ft = { "java" }, -- Java 파일에서만 작동
--     config = function()
--       local lspconfig = require("lspconfig")
--
--       lspconfig.jdtls.setup({
--         cmd = { "jdtls" }, -- JDTLS 실행 명령어
--         root_dir = lspconfig.util.root_pattern(".git", "pom.xml", "build.gradle"), -- 프로젝트 루트 탐색
--         settings = {
--           java = {
--             signatureHelp = { enabled = true }, -- 시그니처 도움말 활성화
--             contentProvider = { preferred = "fernflower" }, -- 디컴파일러 설정
--           },
--         },
--         handlers = {
--           ["language/status"] = function(_, result)
--             -- 상태 업데이트 처리
--             print("Language Status: ", result)
--           end,
--           ["$/progress"] = function(_, result, ctx)
--             -- 진행 상태 업데이트 비활성화
--             return
--           end,
--         },
--         init_options = {
--           bundles = {}, -- 디버그 또는 기타 번들 추가 가능
--         },
--       })
--     end,
--   },
-- }

return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.jdtls.setup({
        cmd = { "jdtls" },
        root_dir = lspconfig.util.root_pattern(".git", "pom.xml", "build.gradle"),
        settings = {
          java = {
            signatureHelp = { enabled = true },
            contentProvider = { preferred = "fernflower" },
          },
        },
        handlers = {
          ["language/status"] = function(_, _)
            -- 아무 동작도 하지 않음
          end,
          ["$/progress"] = function(_, result, ctx)
            return -- 진행 상태 업데이트 비활성화
          end,
        },
        init_options = {
          bundles = {},
        },
      })
    end,
  },
}
