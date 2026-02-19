return {
  "j-hui/fidget.nvim",
  opts = {
    progress = {
      -- 1. 코드를 작성 중일 때(Insert mode)는 알림 띄우지 않음
      suppress_on_insert = true,

      display = {
        -- 2. 완료된 알림이 화면에 머무는 시간을 1초로 단축 (기본값 3초)
        done_ttl = 1,

        -- 3. jdtls의 특정 귀찮은 메시지 내용 숨기기
        format_message = function(msg)
          -- title이나 message가 없을 수 있으므로 안전하게 처리
          local title = msg.title or ""
          local message = msg.message or ""

          -- 무시할 메시지 키워드 조건문 (제목이나 내용에 포함되어 있으면 숨김)
          if title:match("Publish Diagnostics") or message:match("Publish Diagnostics") or
             title:match("Validate documents") or message:match("Validate documents") then
            return nil 
          end

          -- 그 외의 일반적인 메시지는 fidget의 기본 포맷 그대로 출력
          return require("fidget.progress.display").default_format_message(msg)
        end,
      },
    },
  },
}
