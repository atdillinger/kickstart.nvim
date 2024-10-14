-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    -- {
    --   '<leader>ge',
    --   function()
    --     require('neo-tree.command').execute { source = 'git_status', toggle = true }
    --   end,
    --   desc = 'Git Explorer',
    -- },
    -- {
    --   '<leader>be',
    --   function()
    --     require('neo-tree.command').execute { source = 'buffers', toggle = true }
    --   end,
    --   desc = 'Buffer Explorer',
    -- },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
