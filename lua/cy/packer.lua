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

-- Treesitter * Syntax Highlight & parse *
--  In vim
--  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
--  In Neovim
    use({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

-- Harpoon, files pool for fast switch by 'ThePrimeagen'
    use("ThePrimeagen/harpoon")

-- Undotree
    use("mbbill/undotree")

-- Git
    use("tpope/vim-fugitive")

-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	    }
	}
end)
