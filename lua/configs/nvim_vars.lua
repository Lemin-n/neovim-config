-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force user to select one from the menu
-- Avoid showing extra messages when using completion
vim.o.signcolumn = 'yes'
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.shortmess = 'filnxtToOFc'
vim.o.number = true
vim.o.updatetime = 100
vim.o.rnu = true
vim.o.mouse = 'a'
vim.o.scrolloff = 3
vim.g.rustfmt_autosave = 1
vim.g.mapleader = ","
vim.g.syntax = "off"
