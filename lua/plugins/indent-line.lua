return {
  "lukas-reineke/indent-blankline.nvim",

  event = { "BufReadPre", "BufNewFile" },

  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config

  config = function()
    require("ibl").setup({
      enabled = true,
      indent = { char = "┊", smart_indent_cap = true},
      debounce = 100,
      scope = {enabled = true, show_start = true, show_end = true}

    })
  end,  
}
