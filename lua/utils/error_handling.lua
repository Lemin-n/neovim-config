--- @param module_path string
--- @return any
local function require_err_handling(module_path)
	local module_loaded, module = pcall(require, module_path)
	if not module_loaded then print('Error loading ' ..
			module_path .. ' module, look ' .. module_path .. ' module file\n\t Error: ' .. module)
		return
	end
	if type(module) == 'function' then local mod_res = module()
		if type(mod_res) ~= 'function' then return mod_res end
	else
		return module
	end
end

return require_err_handling
