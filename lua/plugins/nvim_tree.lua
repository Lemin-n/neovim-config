local function nerd_tree()
	require("nvim-tree").setup {
		open_on_setup = true,
		view = {
			adaptive_size = true,
			width = 30,
			side = 'left',
		},
		diagnostics = {
			enable = true
		}

	}

end

return nerd_tree
