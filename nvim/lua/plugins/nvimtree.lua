require('nvim-tree').setup {
	auto_reload_on_write = true,
	view = {
		relativenumber = true, 
        width = 40,
	},
	filters = {
		custom = { '__pycache__', '*.egg-info', 'node_modules', '.venv' },
		exclude = {},
	},
	git = {
		ignore = true,
	}
}
