vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- theme
	use 'olimorris/onedarkpro.nvim'

	-- status bar
	use 'tamton-aquib/staline.nvim'

	-- icons
	use 'kyazdani42/nvim-web-devicons'

	-- file tree
	use 'kyazdani42/nvim-tree.lua'

	-- syntax highlight
	use {
	        'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}

	-- utilities
	use 'ctrlpvim/ctrlp.vim'
	use 'preservim/nerdcommenter'
	use 'LoricAndre/OneTerm.nvim'

end)
