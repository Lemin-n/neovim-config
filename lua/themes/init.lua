local function init()if vim.lemi_theme == nil then
		vim.theme_name = 'onedark'
	end
	local theme_loaded, theme = pcall(require, 'themes.' .. vim.theme_name)
	if theme_loaded then theme.set() else print('Error load ' ..
		vim.theme_name .. ' theme, look ' .. vim.theme_namw .. ' module file') end

end

return init
