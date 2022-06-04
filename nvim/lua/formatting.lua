local create_au = vim.api.nvim_create_autocmd

create_au('FileType', {
	pattern = { 'vue' },
	command = 'setlocal ts=2 sw=2 sts=2',
})

create_au('FileType', {
	pattern = { 'lua' },
	command = 'setlocal ts=4 sw=4 sts=4',
})
