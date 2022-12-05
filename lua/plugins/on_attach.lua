local function on_attach(client, bufnr)
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_augroup('Formatting', { clear = true })
		vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
			group = 'FormatLua',
			pattern = { "*.jsx,*.tsx,*.js,*.ts,*.css,*.json,*.rs,*.lua" },
			desc = 'Formatting',
			buffer = bufnr,
			callback = function(_)
				vim.lsp.buf.format({formatting_option = { tabSize = 1, insertSpaces = false,trimTrailingWhitespaces = true, insertFinalNewLine = false, trimFinalNewLines = true }, bufnr = bufnr})
			end
		})
	end
end

return on_attach
