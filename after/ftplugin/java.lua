-- after/ftplugin/java.lua

-- Java 파일에서는 들여쓰기를 4칸으로 강제 설정
-- opt_local을 사용하면 현재 버퍼(현재 파일)에만 적용됩니다.
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4
