return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = require "configs.conform",
  },
  {
    "olimorris/codecompanion.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      "echasnovski/mini.diff",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- The following are optional:
      { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
    },
    config = function()
      require "configs.codecompanion"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "anuvyklack/windows.nvim",
    lazy = false,
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim",
    },
    config = function()
      require "configs.windows"
    end,
  },
  -- {
  --   "Exafunction/codeium.nvim",
  --   enabled = true,
  --   opts = {
  --     enable_chat = true,
  --   },
  -- },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require "configs.copilot"
  --   end,
  -- },
  --
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        -- "Exafunction/codeium.nvim",
        "olimorris/codecompanion.nvim",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
      },
    },
    opts = {
      completion = {
        keyword_length = 1,
      },
      sources = {
        -- { name = "codeium", group_index = 2 },
        {
          name = "codecompanion",
          group_index = 1, -- Changed to 1 to give it higher priority
          keyword_length = 1,
          priority = 100, -- Added explicit priority
        },
        { name = "nvim_lsp", group_index = 2 },
        { name = "luasnip", group_index = 2 },
        { name = "buffer", group_index = 2 },
        { name = "nvim_lua", group_index = 2 },
        { name = "path", group_index = 2 },
      },
    },
  },
  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.keybinds"] = {
            config = {
              default_keybinds = true,
            },
          },
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
        },
      }

      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "yaml",
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
