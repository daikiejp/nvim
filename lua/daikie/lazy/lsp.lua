return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local on_attach = require("daikie.keymaps").on_attach
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.lua_ls.setup {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim' }
                }
            }
        },
        on_attach = on_attach,
        capabilities = capabilities,
    }
    lspconfig.pyright.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    --lspconfig.tsserver.setup {} --deprecated
    lspconfig.ts_ls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
    lspconfig.eslint.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    lspconfig.marksman.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
    lspconfig.html.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
    lspconfig.cssls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
    lspconfig.jsonls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    lspconfig.yamlls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    lspconfig.tailwindcss.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    end,
}
