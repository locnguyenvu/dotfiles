local call_func = vim.api.nvim_call_function

vim.api.nvim_set_var('g:Lf_Rg', '/usr/local/bin/ag')
if call_func('has', {'win32',}) == 1 then
    vim.api.nvim_set_var('g:Lf_Ctags', 'C:\\Users\\loc\\AppData\\Local\\apps\\ctags.exe')
    vim.api.nvim_set_var('g:Lf_PythonVersion', 3)
end
