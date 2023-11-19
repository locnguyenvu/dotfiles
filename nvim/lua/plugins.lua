-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Load lua path
    local lua_path = function(name)
        return string.format("require'plugins.%s'", name)
    end
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', config = lua_path"bufferline" }
	use { 'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons', opt = true } 
    use { 'Yggdroot/LeaderF', run = ':LeaderfInstallCExtension', config = lua_path"leaderf" } -- requires pynvim, python-devel
    use { 'stsewd/isort.nvim', run = ':UpdateRemotePlugins' }
    use { "nvim-treesitter/nvim-treesitter", config = lua_path"nvim-treesitter" }
    use { 'feline-nvim/feline.nvim', config = lua_path"feline"}
    use { 'nvim-tree/nvim-tree.lua', config = lua_path"nvimtree" }
    use { 'tpope/vim-fugitive' }
    use { 'ryanoasis/vim-devicons' }
	use { 'lukas-reineke/indent-blankline.nvim' , config = lua_path"indent-blankline"}
    use { 'neomake/neomake' }

    -- lsp config
	use { 'neovim/nvim-lspconfig', config = lua_path"nvim-lspconfig" }
    use { 'hrsh7th/cmp-nvim-lsp', config = lua_path"cmp-nvim" }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }

	-- Ruby on rails
	use { 'tpope/vim-rails'}

    -- Themes
    use { 'dracula/vim', as = 'dracula' }

end)
