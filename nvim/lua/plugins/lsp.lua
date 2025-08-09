return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = true, -- <- re-enabled for potential speed improvements
        eslint = false,
        tsserver = {
          on_attach = function(client)
            -- Disable formatting capability for tsserver
            client.server_capabilities.documentFormattingProvider = false
          end,
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 4096, -- Allocate more memory for tsserver
                watchOptions = {
                  excludeDirectories = {
                    "**/node_modules",
                    "**/dist",
                    "**/build",
                  },
                },
              },
            },
            javascript = {
              tsserver = {
                maxTsServerMemory = 4096, -- Allocate more memory for tsserver
                watchOptions = {
                  excludeDirectories = {
                    "**/node_modules",
                    "**/dist",
                    "**/build",
                  },
                },
              },
            },
          },
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = { allFeatures = false },
              checkOnSave = {
                command = "clippy",
              },
            },
          },
        },
      },
    },
  },
}
