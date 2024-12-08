return {
  -- project needs to use rye/uv and have debugpy
  -- require('dap-python').setup 'python',
  'mfussenegger/nvim-dap-python',
  dependencies = { 'mfussenegger/nvim-dap' },
  enabled = true,
  lazy = true,
  ft = { 'python' },
  config = function()
    local status, dap = pcall(require, 'dap')
    if not status then
      return
    end
    local dappython
    status, dappython = pcall(require, 'dap-python')
    if not status then
      return
    end
    -- dap.configurations.python = {
    --   {
    --     type = 'python',
    --     request = 'launch',
    --     name = 'Launch file',
    --     program = '${file}',
    --     -- justMyCode = true,
    --     showReturnValue = true,
    --   },
    -- }
    -- local venv = vim.fn.expand '~/.virtualenvs/debugpy/bin/python'

    -- if vim.fn.filereadable(venv) == 0 then
    --   vim.schedule(function()
    --     vim.api.nvim_notify('missing venv: ' .. venv, vim.log.levels.WARN, {})
    --     vim.api.nvim_notify(
    --       'try: mkdir -p ~/.virtualenvs && cd ~/.virtualenvs && python -m venv debugpy && pip install --no-cache-dir --upgrade debugpy',
    --       vim.log.levels.WARN,
    --       {}
    --     )
    --   end)
    -- end
    dappython.setup('python', {
      include_configs = true,
      pythonPath = nil,
    })
  end,
}
