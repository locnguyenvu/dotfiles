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

-- Telescope
map('n', '<C-p>', ':Telescope find_files<CR>', {})
map('n', '<C-o>', ':Telescope buffers<CR>', {})
map('n', 'mm', ':Telescope tags<CR>', { noremap = true })

-- Outline
map('n', '<C-i>', ':SymbolsOutline<CR>', {})
