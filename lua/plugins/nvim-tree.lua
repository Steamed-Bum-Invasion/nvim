return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		local function get_extension(filename)
			return filename:match("^.+%.(.+)$") or ""
		end

		local sorter = function(nodes)
			table.sort(nodes, function(a, b)
				local left_ext = get_extension(a.name):lower()
				local right_ext = get_extension(b.name):lower()

				if left_ext == right_ext then
					-- If extensions are the same, compare names
					return a.name:lower() < b.name:lower()
				end

				return left_ext < right_ext
			end)
		end

		nvimtree.setup({

			view = {
				width = 25,
			},

			sort = {
				sorter = sorter,
				folders_first = true,
			},

			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
		})

		-- auto close
		local function is_modified_buffer_open(buffers)
			for _, v in pairs(buffers) do
				if v.name:match("NvimTree_") == nil then
					return true
				end
			end
			return false
		end

		vim.api.nvim_create_autocmd("BufEnter", {
			nested = true,
			callback = function()
				if
					#vim.api.nvim_list_wins() == 1
					and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil
					and is_modified_buffer_open(vim.fn.getbufinfo({ bufmodified = 1 })) == false
				then
					vim.cmd("quit")
				end
			end,
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
