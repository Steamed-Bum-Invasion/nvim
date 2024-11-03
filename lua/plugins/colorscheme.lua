return {

	{ -- tokyonight colorscheme
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- load the colorscheme here
			-- vim.cmd("colorscheme tokyonight")
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
			-- vim.cmd("colorscheme nightfox")
		end,
	},
  { --kanagawa colorscheme
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Setup Kanagawa with custom options
      require('kanagawa').setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors)
          return {}
        end,
        theme = "wave",
        background = {
          dark = "dragon",
          light = "lotus"
        },
      })
      -- Load the Kanagawa colorscheme
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
