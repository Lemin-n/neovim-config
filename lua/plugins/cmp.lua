---@diagnostic disable: missing-parameter
local function _cmp_init()
	local cmp = require 'cmp'

	local settings = {
		snippet = {
			expand = function(args)
				vim.fn["vsnip#anonymous"](args.body)
			end,
		},
	
		-- Installed sources
		sources = {
			{ name = 'nvim_lsp' },
			{ name = 'vsnip' },
			{ name = 'path' },
			{ name = 'buffer' },
			{ name = 'crates' },
			{ name = 'luasnip' }
		},
	}
end
local function cmp_init()
	local cmp = require 'cmp'
return {
			['<C-up>'] = cmp.mapping.select_prev_item(),
			['<C-down>'] = cmp.mapping.select_next_item(),
			-- Add tab support
			['<S-Tab>'] = cmp.mapping.select_prev_item(),
			['<Tab>'] = cmp.mapping.select_next_item(),
			['<S-up>'] = cmp.mapping.scroll_docs(-4),
			['<S-down>'] = cmp.mapping.scroll_docs(4),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.close(),
			['<CR>'] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Insert,
				select = true,
			})
		}

end

return cmp_init
