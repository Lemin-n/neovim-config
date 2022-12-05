local plug_list = {
	rust_vim = {
		comment = 'Rust Lang LSP and utils, partial configured',
		git = 'rust-lang/rust.vim',
	},
	sumneko_lsp = {
		comment = 'Lua LSP, looking configurations',
		git = 'sumneko/lua-language-server'
	},
	manson = {
		comment = 'Plugins manager',
		git = 'williamboman/mason.nvim'
	},
	tree_sitter = {
		comment = 'Nvim Treesitter abstraction layer',
		git = 'nvim-treesitter/nvim-treesitter',
		config = { ['do'] = ':TSUpdate' }
	},
	lsp_zero = {
		comment = 'Manson, lspconfig and cmp configuration plugin',
		git = 'VonHeikemen/lsp-zero.nvim',
	},
	lua_snip = {
		comment = '',
		git = 'L3MON4D3/LuaSnip'
	},
	friendly_snippets = {
		comment = '',
		git = 'rafamadriz/friendly-snippets'
	},
	manson_lsp = {
		comment = 'Interop plugin between manson and lspconfig',
		git = 'williamboman/mason-lspconfig.nvim'
	},
	tsserver = {
		comment = 'Typescript LSP, devaslife config',
		git = 'typescript-language-server/typescript-language-server'
	},
	lualine = {
		comment = '',
		git = 'nvim-lualine/lualine.nvim'
	},
	emmet = {
		comment = 'HTML Boilerplate generator',
		git = 'mattn/emmet-vim'
	},
	md_preview = {
		comment = 'Markdown Preview liveview in localhost',
		git = 'iamcco/markdown-preview.nvim',
		config = { ['do'] = 'cd app npm run install' }
	},
	lualine_icons = {
		comment = '',
		git = 'kyazdani42/nvim-web-devicons'
	},
	tagbar = {
		comment = 'Tag file browser, no configured',
		git = 'preservim/tagbar'
	},
	nvim_lsp = {
		comment = 'Nvim native LSP',
		git = 'neovim/nvim-lspconfig'
	},
	nvim_cmp = {
		comment = 'Completion engine, partial configured',
		git = 'hrsh7th/nvim-cmp'
	},
	cmp_lsp = {
		comment = 'Cmp engine lsp completion add-on',
		git = 'hrsh7th/cmp-nvim-lsp'

	},
	cmp_snippet = {
		comment = 'Cmp engine snippet add-on',
		git = 'hrsh7th/cmp-vsnip'
	},
	cmp_path = {
		comment = 'Cmp engine path add-on',
		git = 'hrsh7th/cmp-path'
	},
	cmp_buffer = {
		comment = 'Cmp engine buffer add-on',
		git = 'hrsh7th/cmp-buffer'
	},
	nvim_plenary = {
		comment = 'Some plugin',
		git = 'nvim-lua/plenary.nvim'
	},
	rust_crates = {
		comment = 'Rust Lang Cargo Dependencies fetching and autocomplete, partial configured',
		git = 'saecki/crates.nvim',
		config = { tag = 'v0.3.0' }
	},
	rust_tools = {
		comment = 'Rust Lang tools for nvim enviroment, partial configured',
		git = 'simrat39/rust-tools.nvim'
	},
	vsnip = {
		comment = 'Snippet engine, no configured',
		git = 'hrsh7th/vim-vsnip'
	},
	lua_popup = {
		comment = 'Nvim lua popup menu, no configured',
		git = 'nvim-lua/popup.nvim'
	},
	telescope = {
		comment = 'Fuzzy finder, no configured',
		git = 'nvim-telescope/telescope.nvim'

	},
	lua_tree = {
		comment = 'Nvim folder tree in lua, configured',
		git = 'kyazdani42/nvim-tree.lua'
	},
	lua_tree_icons = {
		comment = 'Nerd Fonts icon for Lua Tree',
		git = 'kyazdani42/nvim-web-devicons'
	},
	vim_one_theme = {
		comment = 'Vim One Theme (Have nice dark mode, no config now)',
		git = 'rakr/vim-one'
	},
	nord_vim_theme = {
		comment = 'Nord Theme (Nice Colors, no config now)',
		git = 'arcticicestudio/nord-vim'
	},
	onedark_theme = {
		comment = 'Onedark theme (current main theme)',
		git = 'navarasu/onedark.nvim'
	},
	nightfox_theme = {
		comment = 'Nightfox theme (Less used, no config now)',
		git = 'EdenEast/nightfox.nvim'
	}
}


return plug_list
