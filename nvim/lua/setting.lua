local o = vim.o
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local call_func = vim.api.nvim_call_function

cmd([[
colorscheme dracula
]])

-- Global
o.termguicolors = true
o.incsearch = true
o.hlsearch = true
o.number = true
o.rnu = true
o.mouse = 'a'
o.clipboard = 'unnamed,unnamedplus'
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.shiftwidth = 4
o.tabstop = 4

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end

  augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup END
]])

if call_func('has', {'win32',}) == 1 then
    map('v', '<Nul>', ':w !set-clipboard<cr><cr>', { nowait = true })
    vim.opt.shell = 'pwsh'
    vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
    vim.opt.shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
elseif call_func('has', {'macunix', }) == 1 then
    map('v', '<Nul>', ':w !pbcopy<cr><cr>', { nowait = true })
end

vim.api.nvim_set_var('g:do_filetype_lua', 1)
