-- KEYMAPS

vim.g.mapleader = " "

local keymap =  vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",      


-- exit insert mode
keymap.set("i", "jk", "<ESC>", opts,{ desc = "Exit insert mode with jk" })
keymap.set("i", "kj", "<ESC>", opts,{ desc = "Exit insert mode with kj" })


-- window management
keymap.set("n", "<leader>sv", "<C-w>v", opts, { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", opts, { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", opts,  { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", opts, { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", opts, { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", opts, { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", opts,{ desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", opts,{ desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", opts,{ desc = "Open current buffer in new tab" })


 -- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts, { desc = "move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", opts, { desc = "move to right window" })
keymap.set("n", "<C-k>", "<C-w>k", opts, { desc = "move to down window" })
keymap.set("n", "<C-l>", "<C-w>l", opts, { desc = "move to up window" })   


-- Resize with arrows
keymap.set("n", "<leader>ru", ":resize +2<CR>", opts, { desc = "Resize up" })
keymap.set("n", "<leader>rd", ":resize -2<CR>", opts, { desc = "Resize down" })
keymap.set("n", "<leader>rr", ":vertical resize -2<CR>", opts, { desc = "Resize left" })
keymap.set("n", "<leader>rl", ":vertical resize +2<CR>", opts, { desc = "Resize right" })


-- removes highlight after search
keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "remove highlight" })

