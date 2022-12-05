lua <<EOF

-- Lua tree
local settings_err, settings = pcall(require,'lua_init')
if not settings_err then print('Call error for settings, check lua/init file') else settings.start() end
-- nvim_lsp object

EOF

" Code navigation shortcuts
" as found in :help lsp
"
"imap <expr> <C-t>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
    " Expand
    "imap <expr> <A-,>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<A-,>>'
    
    "imap <expr> ,,   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : ',,'
    "smap <expr> ,,   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : ',,'
    "imap <expr> .. vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '..'
    "smap <expr> .. vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '..'

    " Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
    " See https://github.com/hrsh7th/vim-vsnip/pull/50
    "nmap        s   <Plug>(vsnip-select-text)
    "xmap        s   <Plug>(vsnip-select-text)
    "nmap        S   <Plug>(vsnip-cut-text)
    "xmap        S   <Plug>(vsnip-cut-text)
let mapleader = ','
" Quick-fix

" Setup Completion
" See https://github.com/hrsh7th/nvim-cmp#basic-configuration

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
" Show diagnostic popup on cursor hover_with_actions
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false });

"autocmd BufWritePre * lua vim.lsp.buf.formatting_seq_sync();
" Goto previous/next diagnostic warning/error
