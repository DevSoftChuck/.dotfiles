local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        html = { "prettier" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        go = { "gofmt" },
        bash = { "beautysh" },
        yaml = { "yamlfix" },
    },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
