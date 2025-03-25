-- OPTIONS FOR NVIM CONFIG --

local opt = vim.opt

-- generic
opt.updatetime = 300 -- reduces updatetime for faster completion
opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
opt.termguicolors = true -- set term gui colors (most terminals support this)
opt.undofile = true -- enables persistent undo
opt.virtualedit = "all" -- enables cursor to move anywhere
opt.showmode = false -- removes mode information
opt.scrolloff = 999 -- minimum number of lines to keep from top and bottom
opt.sidescroll = 10 -- minimal number of screen columns either side of cursor if wrap is `false`
opt.cursorline = true -- highlights current line
vim.opt.iskeyword:append("-")

-- clipboard
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

-- for wrap
opt.wrap = false -- removes line wrapping
opt.linebreak = true -- companion to wrap, don't split words

-- for numberline
opt.number = true -- enables line number
opt.relativenumber = true -- enables relative line number
opt.numberwidth = 4 -- increases width of numberline

-- splits for windows
opt.splitbelow = true -- force all horizontal splits to go below current window
opt.splitright = true -- force all vertical splits to go to the right of current window

-- tabs and indents
opt.expandtab = true -- convert tabs to spaces, use <CTRL-V>TAB to use tab
opt.tabstop = 2 -- number of spaces tabs expand into
opt.shiftwidth = 2 -- number of spaces for each indent
opt.swapfile = false -- prevent creation of swapfile

-- cases for search
opt.ignorecase = true -- ignores cases during search
opt.smartcase = true -- allows case based search

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- text wrapping for md and text
local group = vim.api.nvim_create_augroup("Markdown Wrap Settings", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.md",
	group = group,
	callback = function()
		vim.wo.wrap = true
	end,
})

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.txt",
	group = group,
	callback = function()
		vim.wo.wrap = true
	end,
})

vim.api.nvim_create_autocmd("BufLeave", {
	pattern = "*",
	group = group,
	callback = function()
		vim.wo.wrap = false
	end,
})
