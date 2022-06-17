local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
  vim.cmd('packadd packer.nvim')
end

local packer = require('packer')

return packer.startup(
    function()
        use 'wbthomason/packer.nvim'
        use 'neovim/nvim-lspconfig'
        use 'hrsh7th/nvim-cmp'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'j-hui/fidget.nvim'
        use 'andweeb/presence.nvim'
        use 'nvim-lua/popup.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }

        if packer_bootstrap then
            packer.sync()
        end
    end
)
