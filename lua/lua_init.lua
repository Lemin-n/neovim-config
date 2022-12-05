
local function settings_start()
	local require_err_handling = require 'utils.error_handling'
	require_err_handling('configs')
	require_err_handling('plugins')
	require_err_handling('themes')
end
return {start = settings_start}
