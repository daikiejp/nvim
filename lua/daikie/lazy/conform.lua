return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                javascript = { "prettierd", "prettier", stop_after_first = true },
                typescript = { "prettierd", "prettier", stop_after_first = true },
                javascriptreact = { "prettierd", "prettier", stop_after_first = true },
                typescriptreact = { "prettierd", "prettier", stop_after_first = true },
                ["javascript.jsx"] = { "prettierd", "prettier", stop_after_first = true },
                ["typescript.tsx"] = { "prettierd", "prettier", stop_after_first = true },
                markdown = { "prettier" },
                html = { "prettier" },
                css = { "prettier" },
                yaml = { "prettier" },
                json = { "prettier" },
                -- php = { "php_cs_fixer" },
                -- rust = { "rustfmt" },
                -- go = { "gofmt" },
                -- ruby = { "rubocop" },
                -- cpp = { "clang_format" },
                -- c = { "clang_format" }
                -- java = { "google_java_format", "clang_format", stop_after_first = true },
            }
        })
    end
}

