return require('packer').startup(
	function(use)
		use 'wbthomason/packer.nvim'
		use 'owozsh/Amora'
		-- use 'itchyny/lightline.vim'
		use 'neovim/nvim-lspconfig'
		use 'hrsh7th/nvim-compe'
		use 'nvim-lua/popup.nvim'
   		use 'nvim-lua/plenary.nvim'
    	use 'nvim-telescope/telescope.nvim'
	end
)
