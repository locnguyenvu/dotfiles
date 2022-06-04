local call_func = vim.api.nvim_call_function

require("bufferline").setup{
    options = {
        indicator_icon = '▎',
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        diagnostics = 'nvim_lsp',
        show_close_icon = false,
        show_buffer_close_icons = false,
        offsets = {{filetype = "NvimTree", text = "File Explorer"}},
    }
}

if call_func('has', {'win32',}) == 1 then
    vim.api.nvim_set_var('g:Lf_Ctags', 'C:\\ProgramData\\chocolatey\\bin\\ctags.exe')
end
