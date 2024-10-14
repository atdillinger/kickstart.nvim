return {
  {
    'folke/persistence.nvim',
    event = 'BufReadPre', -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    },
  },
}
-- require 'custom.plugins.persistence',
-- -- load the session for the current directory
-- vim.keymap.set("n", "<leader>ps", function() require("persistence").load() end)
--
-- -- select a session to load
-- vim.keymap.set("n", "<leader>pS", function() require("persistence").select() end)
--
-- -- load the last session
-- vim.keymap.set("n", "<leader>pl", function() require("persistence").load({ last = true }) end)
--
-- -- stop Persistence => session won't be saved on exit
-- vim.keymap.set("n", "<leader>pd", function() require("persistence").stop() end)
-- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
--    This is the easiest way to modularize your config.
