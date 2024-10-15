return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python', --optional
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  },
  branch = 'regexp', -- This is the regexp branch, use this for the new version
  -- event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  -- lazy = false,
  config = function()
    require('venv-selector').setup {
      name = '.venv',
      auto_refresh = false,
    }
  end,
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>cv', '<cmd>VenvSelect<cr>' },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>cc', '<cmd>VenvSelectCached<cr>' },
  },
}
