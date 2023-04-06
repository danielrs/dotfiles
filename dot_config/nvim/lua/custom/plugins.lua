local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- For a list of supported languages see:
        -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
        -- defaults
        "lua",
        "vim",
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
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- misc
        "capnp",
      },
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = {
      enabled = function()
        -- keep command mode completion enabled when cursor is in a comment
        if vim.api.nvim_get_mode().mode == 'c' then
          return true
        end
        -- disable completion in prompts (e.g. Telescope.vim)
        buftype = vim.api.nvim_buf_get_option(0, "buftype")
        if buftype == "prompt" then
          return false
        end
        -- disable completion in comments
        local context = require 'cmp.config.context'
        return not context.in_treesitter_capture("comment")
          and not context.in_syntax_group("Comment")
      end,
    },
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.goimports,
        },
      })
    end,
  },

  {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      "folke/trouble.nvim",
    },
    config = function()
    end,
  },

  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      local base = require("plugins.configs.lspconfig")
      require("go").setup({
        lsp_on_attach = base.on_attach,
        lsp_cfg = {
          capabilities = base.capabilities,
        },
        lsp_inlay_hints = {
          enable = false,
        },
      })
      -- Format Go files on save
      local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        callback = function()
          -- require("go.format").goimport() -- slower than just using vim.lsp.buf.format?
          vim.lsp.buf.format({ async = false })
        end,
        group = format_sync_grp,
      })
    end,
    ft = {"go", "gomod"},
    build = ":lua require('go.install').update_all_sync()",
  },

  {
    "numToStr/Comment.nvim",
    lazy = false,
  },
}

return plugins
