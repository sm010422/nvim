return {
  "ThePrimeagen/harpoon",
  keys = function()
    local keys = {}
    for i = 1, 9 do
      -- <leader>1~9 는 bufferline 탭 이동으로 쓰므로 harpoon 기본 매핑은 해제
      table.insert(keys, { "<leader>" .. i, false })
    end
    return keys
  end,
}
