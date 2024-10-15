return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      spec = {
        { '<leader>b', group = 'buffers' },
        { '<leader>c', group = 'code', mode = { 'n', 'x' } },
        { '<leader>g', group = 'git' },
        -- { '<leader>r', group = 'rename' },
        { '<leader>s', group = 'search' },
        { '<leader>t', group = 'toggle' },
      },
    },
  },
}
