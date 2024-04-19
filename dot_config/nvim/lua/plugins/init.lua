return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- For a list of supported languages see:
        -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
        -- Default list:
        -- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/configs/treesitter.lua
        "lua",
        "luadoc",
        "printf",
        "vim",
        "vimdoc",
        -- git
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",
        -- shell
        "bash",
        "fish",
        -- low level
        "c",
        "cpp",
        "elixir",
        "go",
        "java",
        "python",
        "rust",
        "sql",
        -- web dev
        "css",
        "html",
        "javascript",
        "json",
        "tsx",
        "typescript",
        -- misc
        "capnp",
        "markdown",
        "markdown_inline",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Default list:
        -- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/configs/mason.lua
        "lua-language-server",
        "stylua",
      },
    },
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylelua" },
          go = { "goimports", "gofmt" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end,
  },

  {
    "numToStr/Comment.nvim",
    lazy = false,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = {
      enabled = function()
        -- See: https://github.com/hrsh7th/nvim-cmp/wiki/Advanced-techniques#disabling-completion-in-certain-contexts-such-as-comments
        -- Keep command mode completion enabled when cursor is in a comment.
        if vim.api.nvim_get_mode().mode == "c" then
          return true
        end
        -- Disable completion in prompts (e.g. Telescope.vim).
        buftype = vim.api.nvim_buf_get_option(0, "buftype")
        if buftype == "prompt" then
          return false
        end
        -- Disable completion in comments.
        local context = require "cmp.config.context"
        return not context.in_treesitter_capture("comment")
            and not context.in_syntax_group("Comment")
      end,
    },
  },

  {
    "folke/trouble.nvim",
    branch = "dev",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/trouble.nvim",
    },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
    end,
  },

  {
    "ray-x/go.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "neovim/nvim-lspconfig",
      "ray-x/guihua.lua",
    },
    config = function()
      -- Configure based on nvchad lspconfig.
      local base = require("nvchad.configs.lspconfig")
      require("go").setup({
        lsp_on_attach = base.on_attach,
        lsp_cfg = {
          capabilities = base.capabilities,
        },
        lsp_inlay_hints = {
          enable = false,
        },
      })
    end,
    ft = { "go", "gomod" },
    build = ":lua require('go.install').update_all_sync()",
  },

}
