return {
  'rmagatti/auto-session',
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config

  config = function()

    local auto_session = require("auto-session")

    vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions" -- recommended from docs

    auto_session.setup({
      
      auto_restore = false, 
      auto_save = false,
      auto_create = true,
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wf", "<cmd>Autosession search<CR>",{ desc = "Session search" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>wd", "<cmd>Autosession delete<CR>", { desc = "Delete session for cwd" }) -- restore last workspace session for current directory
  end,

}
