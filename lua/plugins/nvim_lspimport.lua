return {
  {
    "stevanmilic/nvim-lspimport",
    ft = "python",
    config = function()
      local grp = vim.api.nvim_create_augroup("LspImportPythonKeymap", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        group = grp,
        pattern = "python",
        callback = function(args)
          vim.keymap.set("n", "<leader>I", function()
            require("lspimport").import()
          end, {
            noremap = true,
            silent = true,
            desc = "Python LSP Import",
            buffer = args.buf, -- 해당 파이썬 버퍼에만
          })
        end,
      })
    end,
  },
}
