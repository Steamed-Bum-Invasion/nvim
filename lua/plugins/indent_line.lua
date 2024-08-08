return {
  { -- Add indentation guides even on blank lines
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
        enabled = true,
        indent = { char = "|", smart_indent_cap = true,tab_char = {"-"},},
        debounce = 100,
        scope = {enabled = true, show_start = true, show_end = true}
        
      })
    end,      
  },
}

