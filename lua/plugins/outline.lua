return {
  {
    'hedyhli/outline.nvim',
    config = function()
      -- vim.keymap.set('n', '<leader>o', '<cmd>Outline<CR>', { desc =Q:q 'Toggle Outline' })
      require('outline').setup {}
    end,
    keys = {
      { '<leader>o', '<cmd>Outline<CR>', desc = 'Toggle Outline', silent = true },
      { '<leader>O', '<cmd>OutlineRefresh<CR>', desc = 'Outline Refresh', silent = true },
    },
  },
}
