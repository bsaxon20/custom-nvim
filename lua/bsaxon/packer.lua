-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')

	use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}

use ('mfussenegger/nvim-dap')
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
use ("jay-babu/mason-nvim-dap.nvim")
use ('xiyaowong/nvim-transparent')
use ('machakann/vim-highlightedyank')
use ('christoomey/vim-tmux-navigator')
use ('tpope/vim-fugitive')
use ('HiPhish/nvim-ts-rainbow2')
use ('fedepujol/bracket-guides')
use ('nvim-lualine/lualine.nvim')
use { 'justinhj/battery.nvim', requires = {{'kyazdani42/nvim-web-devicons'}, {'nvim-lua/plenary.nvim'}}}
use({"Pocco81/auto-save.nvim",config = function()
		 require("auto-save").setup {}
	end,
})
use ('nvim-tree/nvim-tree.lua')
use ('nvim-treesitter/nvim-treesitter-context')
use ('catppuccin/nvim')
end)

