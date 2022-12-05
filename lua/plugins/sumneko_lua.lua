local on_attach = require "configs.autocmd"
---@diagnostic disable: param-type-mismatch, missing-parameter
-- put this file somewhere in your nvim config, like: ~/.config/nvim/lua/config/lua-lsp.lua
-- usage: require'lspconfig'.sumneko_lua.setup(require("config.lua-lsp"))
local library = {}

local path = vim.split(package.path, ";")

-- this is the ONLY correct way to setup your path
table.insert(path, "lua/?.lua")
table.insert(path, "lua/?/init.lua")

local function add(lib)
	for _, p in pairs(vim.fn.expand(lib, false, true)) do
		p = vim.loop.fs_realpath(p)
		library[p] = true
	end
end

-- add runtime
add("$VIMRUNTIME")

-- add your config
add("~/.config/nvim/lua")

-- add plugins
-- if you're not using packer, then you might need to change the paths below
add("~/.vim/plugged")

local config = {
	-- delete root from workspace to make sure we don't trigger duplicate warnings
	on_new_config = function(config, root)
		local libs = vim.tbl_deep_extend("force", {}, library)
		libs[root] = nil
		config.settings.Lua.workspace.library = libs
		return config
	end,
	on_attach = on_attach,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup your lua path
	--			path = path
			},
			completion = { callSnippet = "Both" },
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" }
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = library,
				maxPreload = 2000,
				preloadFileSize = 50000,
				checkThirdParty = false
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = { enable = false },
			--format = {
			--	enable = true,
			--	defaultConfig = {
			--		indent_style = "tab",
			--		indent_size = "1"
			--	}
			--},
		}
	}
}
return config
