local function rust_tools(server)
	local lsp = require('lspconfig')['rust_analyzer']
	local crates = require 'crates'
	local opts = {
		tools = {
			autoSetHints = true,
			runnables = {
				use_telescope = true
			},
			inlay_hints = {
				parameter_hints_prefix = "",
				other_hints_prefix = "",
			},
		},
		server = server
	}
	crates.setup {}
	require('rust-tools').setup(opts)
end

return rust_tools
