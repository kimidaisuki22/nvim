-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- Search
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

-- Theme
  use({ 'rose-pine/neovim', as = 'rose-pine' })

-- Treesitter
--  In vim
--  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
--  In Neovim
    use({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
end)
