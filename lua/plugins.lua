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

	-- buffer line
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

	-- syntax highlight
	use {
	        'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}

	-- cursor highlight
	use 'yamatsum/nvim-cursorline'

	-- utilities
	use 'ctrlpvim/ctrlp.vim'
	use 'preservim/nerdcommenter'
	use 'LoricAndre/OneTerm.nvim'
	use 'dstein64/nvim-scrollview'

end)
