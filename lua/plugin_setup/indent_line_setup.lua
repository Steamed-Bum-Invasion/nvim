require("ibl").setup({
  enabled = true,
  indent = { char = "|" },
  whitespace = { highlight = { "Whitespace", "NonText" } },
  scope = { exclude = { language = { "lua" } } },
  debounce = 100,
})
