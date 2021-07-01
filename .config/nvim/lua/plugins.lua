local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- Automatically instally packer if it's not installed already.
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
  execute 'packadd packer.nvim'
end

return require('packer').startup(
	function(use)
		use 'wbthomason/packer.nvim'
		use 'owozsh/Amora'
		use 'neovim/nvim-lspconfig'
		use 'hrsh7th/nvim-compe'
		use 'nvim-lua/popup.nvim'
   		use 'nvim-lua/plenary.nvim'
    	use 'nvim-telescope/telescope.nvim'
	end
)
