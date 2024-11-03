return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    config = function()

      local tree_sitter = require("nvim-treesitter.configs")
      tree_sitter.setup ({

        -- a list of parser names, or "all" (the listed parsers must always be installed)
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

        sync_install = false,

        auto_install = true,

        highlight = { enable = true },

        indent = { enable = true },

        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<leader>ss", 
            node_incremental = "<leader>si",
            node_decremental = "<leader>sd",
            scope_incremental = "<leader>sc",
          },
        },

      })
    end,
  }
}
