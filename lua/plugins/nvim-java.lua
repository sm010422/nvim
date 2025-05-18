return {
  'nvim-java/nvim-java',
  enabled = false,
  config = false,
  dependencies = {
  {
        'neovim/nvim-lspconfig',
        opts = {
          servers = {
            jdtls = {
              handlers = {
                ["language/status"] = function(_, _)
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
