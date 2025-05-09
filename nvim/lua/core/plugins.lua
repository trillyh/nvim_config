local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use "ellisonleao/gruvbox.nvim" 
	use "rose-pine/nvim"
	use "nvim-tree/nvim-tree.lua"
	use 'windwp/nvim-ts-autotag'
	use "nvim-tree/nvim-web-devicons"
	use "nvim-lualine/lualine.nvim"
	use "nvim-treesitter/nvim-treesitter"
	use "nvim-lua/plenary.nvim"
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip"
	use "rafamadriz/friendly-snippets"
	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" }
	}
	use {
		'filipdutescu/renamer.nvim',
		branch = 'master',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use "nvimtools/none-ls.nvim"
	use "windwp/nvim-autopairs"
	use "ayu-theme/ayu-vim"
	use "navarasu/onedark.nvim"
use 'Mofiqul/vscode.nvim'
	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
