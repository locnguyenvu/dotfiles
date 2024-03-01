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
  use { "nvim-treesitter/nvim-treesitter", config = lua_path"nvim-treesitter" }
  use { 'feline-nvim/feline.nvim', config = lua_path"feline"}
  use { 'kyazdani42/nvim-tree.lua', tag = 'nightly', config = lua_path"nvimtree" }
  use { 'tpope/vim-fugitive' }
  use { 'ryanoasis/vim-devicons' }
  use { 'lukas-reineke/indent-blankline.nvim' , config = lua_path"indent-blankline"}
  use { 'neomake/neomake' }
  use { 'edluffy/specs.nvim', config = lua_path"specs" }
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim', 
          tag = '0.1.4', 
          config = lua_path'telescope', 
          requires = { {'nvim-lua/plenary.nvim'} } 
  }

  -- hcl syntax highlight
  use { 'jvirtanen/vim-hcl' }
  use { 'nathangrigg/vim-beancount' }

  -- lsp config
  use { 'neovim/nvim-lspconfig', config = lua_path"nvim-lspconfig" }
  use { 'hrsh7th/cmp-nvim-lsp', config = lua_path"cmp-nvim" }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }

  use { 'nvimdev/lspsaga.nvim', after = 'nvim-lspconfig', config = lua_path'lspsaga' }

  -- Ruby on rails
  use { 'tpope/vim-rails'}

  -- Themes
  use { 'dracula/vim', as = 'dracula' }

end)
