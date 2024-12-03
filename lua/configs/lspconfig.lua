local configs = require "nvchad.configs.lspconfig"

local servers = {
  lua_ls = {},
  html = {},
  awk_ls = {},
  bashls = {},
  ruff = {},
  clangd = {},
  dockerls = {
    languageserver = {
      formatter = {
        ignoreMultilineInstructions = true,
      },
    },
  },
  pyright = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        diagnosticMode = "workspace",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticSettings = {
          reportGeneralTypeIssues = true,
          reportMissingImports = true,
        },
        -- formatting = {
        --   provider = "autopep8",
        --   options = {
        --     maxLineLength = 120, -- Set your desired text width here
        --   },
        -- },
      },
    },
  },
}

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
