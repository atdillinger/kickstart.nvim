-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- lazyvim stuff
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
-- better indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
-- enable j and k when working with wrapped text @david-crespo
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'j', 'gj')
-- new file
vim.keymap.set('n', '<leader>f', '', { desc = 'file' })
vim.keymap.set('n', '<leader>fn', '<cmd>enew<cr>', { desc = 'New File' })

-- quit
vim.keymap.set('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })
vim.keymap.set('n', '<leader>qQ', '<cmd>qa!<cr>', { desc = 'Force Quit All' })

vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })
-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
-- vim.keymap.set('n', '<leader>r', '<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>', { desc = 'Redraw / Clear hlsearch / Diff Updat' })

-- my stuff
-- greatest remap ever - Prime
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland : prime
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<leader>w', '<cmd>set wrap!<CR>', { desc = 'text wrap' })
