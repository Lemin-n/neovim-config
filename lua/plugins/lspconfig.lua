local function _lsp_init()
	local lspconfig         = require 'lspconfig'
	require("mason").setup()
	require("mason-lspconfig").setup({
		ensure_installed = { 'html', 'tsserver', 'tailwindcss', 'rust_analyzer', 'cssls' }
	})
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	local rust_tools = require 'plugins.rust_tools'
	lspconfig.tsserver.setup {
		on_attach = on_attach_autocmd,
		root_dir = lspconfig.util.root_pattern("./.git/", "./.gitignore", "./tsconfig.json"),
		filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
		cmd = { "typescript-language-server.ps1", "--stdio" }
	}
	lspconfig.html.setup { on_attach = on_attach_autocmd }
	lspconfig.cssls.setup { on_attach = on_attach_autocmd, capabilities = capabilities }
	lspconfig.sumneko_lua.setup(luaconf)
	lspconfig.jsonls.setup { on_attach = on_attach_autocmd }
	lspconfig.tailwindcss.setup {
		root_dir = lspconfig.util.root_pattern(".git/", ".gitignore"),
	}
	lspconfig['emmet_ls'].setup {
		root_dir = lspconfig.util.root_pattern("./.git/", "./.gitignore"),
		on_attach = on_attach_autocmd,
	}
	rust_tools()
end

local function lsp_init()
	local lsp_zero          = require 'lsp-zero'
	local cmp_settings      = require 'plugins.cmp'
	local on_attach_autocmd = require 'plugins.on_attach'
	local luaconf           = require 'plugins.sumneko_lua'
	local rust_tools        = require("plugins.rust_tools")
	lsp_zero.preset('recommended')
	lsp_zero.use({ 'html', 'cssls', 'jsonls', 'tailwindcss', 'emmet_ls', 'tsserver', '' }, { on_attach = on_attach_autocmd })
	lsp_zero.configure('sumneko_lua', luaconf)
	lsp_zero.setup_nvim_cmp({
		mapping = lsp_zero.defaults.cmp_mappings(cmp_settings()),
		sources =    {
				{name = 'path', priority = 2},
				{name = 'nvim_lsp', priority = 10},
				{name = 'buffer', keyword_length = 2, priority = 5},
				{name = 'luasnip', keyword_length = 2, priority = -1}}
	})
	local rust_server = lsp_zero.build_options('rust_analyzer', {})
	rust_tools(rust_server)
	lsp_zero.setup {}
end

return lsp_init
