local function onedark()
	require('onedark').setup {
		style = "deep",
		transparent = true,
		code_style = {
			keywords = "bold",
			functions = "bold",
		},
	}
	require('onedark').load()
end

return {
	set = onedark
}
