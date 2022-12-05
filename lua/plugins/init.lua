local function plug()
	local plug_list_err, plug_list = pcall(require, 'plugins.plug_list')
	if plug_list_err then
		vim.call('plug#begin', '~/.vim/plugged')
		local Plug = vim.fn['plug#']
		for _, plugin in pairs(plug_list) do
			if plugin.config == nil then
				Plug(plugin.git)
			else
				Plug(plugin.git, plugin.config)
			end
			vim.call('plug#end')
		end
	else print('Plug_list error, look plug_list file')
	end
end

local function init()
	plug()
	local req_err_handling = require 'utils.error_handling'
	req_err_handling('plugins.lualine')
	req_err_handling('plugins.nvim_tree')
	req_err_handling('plugins.cmp')
	req_err_handling('plugins.tree-sitter')
	req_err_handling('plugins.lspconfig')
end

return init
