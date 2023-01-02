local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd("packadd packer.nvim")

packer.startup(function(use)
	use("wbthomason/packer.nvim")

	-- Themes
	use("Shatur/neovim-ayu")
	use("olimorris/onedarkpro.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({

		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})

	-- LSP
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("nvim-lua/plenary.nvim") -- Common utilities

	use("folke/lsp-colors.nvim")
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("norcalli/nvim-colorizer.lua")
	use("akinsho/nvim-bufferline.lua")

	use("edluffy/hologram.nvim")

	use("github/copilot.vim")
end)
