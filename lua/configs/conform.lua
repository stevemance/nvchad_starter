local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black", "docformatter" },
    rust = { "rustfmt", lsp_format = "fallback" },
    css = { "prettier" },
    html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    -- async = true, -- Enable async formatting
    timeout_ms = 5000, -- Increase the timeout if needed
    lsp_fallback = true,
  },
}

return options
