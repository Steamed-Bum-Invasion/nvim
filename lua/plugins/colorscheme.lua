return {
  { -- tokyonight colorscheme
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd("colorscheme tokyonight")
    end,
  },
  { -- catpuccin colorscheme
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load colorscheme here
      -- vim.cmd("colorscheme catppuccin")
    end,
  },
  { -- nightfox colorscheme
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load colorscheme here
      -- vim.cmd("colorscheme catppuccin")
    end,
  },
}
