local req_err_handling = require 'utils.error_handling'

req_err_handling('configs.mappings.normal')

--noremap <leader>td <cmd>echo "test"<CR>
--nnoremap <silent> q1    <cmd>lua vim.lsp.buf.definition()<CR>
--nnoremap <silent> q2    <cmd>lua vim.lsp.buf.hover()<CR>
--nnoremap <silent> q3    <cmd>lua vim.lsp.buf.implementation()<CR>
--nnoremap <silent> q4 	<cmd>lua vim.lsp.buf.signature_help()<CR>
--nnoremap <silent> q5   	<cmd>lua vim.lsp.buf.type_definition()<CR>
--nnoremap <silent> 1q    <cmd>lua vim.lsp.buf.references()<CR>
--nnoremap <silent> 2q    <cmd>lua vim.lsp.buf.document_symbol()<CR>
--nnoremap <silent> 3q    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
--nnoremap <silent> 4q    <cmd>lua vim.lsp.buf.definition()<CR>
--nnoremap tv :botright vnew <Bar> :terminal<CR>
--tnoremap tq <cmd>:q<CR>
--" Quick-fix
--nnoremap <silent> qq    <cmd>lua vim.lsp.buf.code_action()<CR>

--" Setup Completion
--" See https://github.com/hrsh7th/nvim-cmp#basic-configuration

--" have a fixed column for the diagnostics to appear in
--" this removes the jitter when warnings/errors flow in
--" Set updatetime for CursorHold
--" 300ms of no cursor movement to trigger CursorHold
--" Show diagnostic popup on cursor hover_with_actions
--autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false });
--" Goto previous/next diagnostic warning/error
--nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
--nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>
