-- TODO: coding.lua에도 refactoring.nvim이 keymaps/opts와 함께 정의되어 있음 (중복).
-- lazy.nvim이 스펙을 병합하므로 동작은 하지만, 한 파일로 통합하는 게 깔끔함.
-- coding.lua의 정의를 이 파일로 옮기거나, 이 파일을 삭제하고 coding.lua 하나로 관리 권장.
return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "lewis6991/async.nvim",
  },
}
