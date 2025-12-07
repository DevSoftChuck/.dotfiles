local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        json = { "prettier" },
        java = { "google-java-format" },
        html = { "htmlbeautifier" },
        bash = { "beautysh" },
        rust = { "rustfmt" },
        yaml = { "yamlfix" },
        toml = { "taplo" },
        css = { { "prettier" } },
        sh = { "shellcheck" },
        go = { "goimports", "gofumpt" },
        cpp = { "clang-format" },
    },
    format_on_save = {
        -- stop_after_first = true,
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
