return {
  'nvim-java/nvim-java',
  enabled = false, -- plus
  config = false,
  dependencies = {
  {
        'neovim/nvim-lspconfig',
        opts = {
          servers = {
            jdtls = {
              handlers = {
                ["language/status"] = function(_, _)
                  -- 아무 동작도 하지 않음
                end,
                ['$/progress'] = function(_, result, ctx) 

                end,
              },
              capabilities = vim.lsp.protocol.make_client_capabilities(),
            },
          },
          setup = {
            jdtls = function()
              require('java').setup({
                jdk = {
                  auto_install = false,
                },
                notifications = {
                  dap = false,
                },
              })

              require('lspconfig').jdtls.setup({})

              -- return true will skip mason-lspconfig from setting up jdtls
              return true
            end,
          },
        },
      },
  },
}
