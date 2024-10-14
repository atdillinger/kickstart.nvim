return {
  'ThePrimeagen/git-worktree.nvim',
  config = function()
    require('git-worktree').setup()
  end,
  keys = {
    {
      '<leader>gw',
      '<cmd>lua require("telescope").extensions.git_worktree.git_worktrees()<cr>',
      desc = 'show worktees',
    },
    {
      '<leader>ga',
      '<cmd>lua require("telescope").extensions.git_worktree.create_git_worktree()<cr>',
      desc = 'add worktree',
    },
  },
}
