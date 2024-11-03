return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({})

		mason_lspconfig.setup({})

		mason_tool_installer.setup({
			ensure_installed = {
				"clang-format", -- c,cpp formatter
				"cmakelang", -- cmake formatter
				"beautysh", -- bash formatter
				"stylua", -- lua formatter
				"markdownlint", -- markdown formatter
				"bibtex-tidy", -- TeX formatter
				"isort", -- python formatter
				"black", -- python formatter
				"cpplint", -- c,cpp linter
				"cmakelint", -- cmake linter
				"shellcheck", -- bash linter
				"pylint", -- python linter
				"vale", -- markdown, text, TeX linter
				-- "luacheck", -- lua linter CANNOT DOWNLOAD FOR SOME REASON
			},
		})
	end,
}
