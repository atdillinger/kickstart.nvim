return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    -- 'DBUIFindBuffer',
  },
  keys = {
    { '<leader>D', '<cmd>DBUIToggle<cr>', desc = 'dadbad' },
  },
}
