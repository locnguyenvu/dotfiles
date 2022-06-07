local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

map('n', '<Space>', '<Nop>', {})
vim.g.mapleader = ' '
vim.g.localmapleader = '<Space>'

-- Terminal
map('t', '<esc>', '<c-\\><c-n>', { nowait=true })

-- NERDTree
map('n', '<leader>nt', ':NvimTreeToggle<CR>', {})
map('n', '<leader>nf', ':NvimTreeFindFile<CR>', {})
map('n', '<leader>nr', ':NvimTreeRefresh<CR>', {})

-- Buffline
map('n', '<leader>l', ':BufferLineCycleNext<CR>', {})
map('n', '<leader>h', ':BufferLineCyclePrev<CR>', {})
map('n', '<leader>e', ':BufferLinePick<CR>', {})
map('n', '<leader>d', ':BufferLinePickClose<CR>', {})

-- Leaderf
map('n', '<C-p>', ':Leaderf file<CR>', {})
map('n', '<C-o>', ':Leaderf buffer<CR>', {})
map('n', 'mm', ':Leaderf function<CR>', { noremap = true })
