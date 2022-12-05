local function init()
	local req_err_handling = require 'utils.error_handling'
	local vars = req_err_handling('configs.nvim_vars')
	local autocmd = require 'configs.autocmd'
	local mappings = req_err_handling('configs.mappings')
end

return init
