local function keymap(maptype, keybind, binding, mode)
	mode = mode or { nowait = true, silent = true, noremap = true }
	vim.api.nvim_set_keymap(maptype, keybind, '<cmd>' .. binding .. '<CR>', mode)
end

return keymap
--"<buffer>", "<nowait>", "<silent>", "<script>", "<expr>" "<unique>"
