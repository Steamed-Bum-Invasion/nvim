return {
	"Eandrju/cellular-automaton.nvim",
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>fmlr", "<cmd>CellularAutomaton make_it_rain<CR>")
		keymap.set("n", "<leader>fmll", "<cmd>CellularAutomaton game_of_life<CR>")
	end,
}
