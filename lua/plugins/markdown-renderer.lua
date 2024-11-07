return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons

	---@module 'render-markdown'
	---@type render.md.UserConfig

	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader>mt", "<cmd>RenderMarkdown toggle<CR>")
	end,
}
