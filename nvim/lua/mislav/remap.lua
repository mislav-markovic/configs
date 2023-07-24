-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Ssets the mode, buffer and description for us each time.
-- We create a function that lets us more easily define mappings specific
local nmap = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end

local vmap = function(keys, func, desc)
  vim.keymap.set('v', keys, func, { buffer = bufnr, desc = desc })
end

local imap = function(keys, func, desc)
  vim.keymap.set('i', keys, func, { buffer = bufnr, desc = desc })
end

local allmap = function(keys, func, desc)
  vim.keymap.set({'n', 'v', 'i', 'x', 's', 'c', 'o', 'l', 't'}, keys, func, { buffer = bufnr, desc = desc })
end

nmap('<leader>vf', vim.cmd.Ex, '[v]iew project [f]iles')

-- Diagnostic keymaps
nmap('[d', vim.diagnostic.goto_prev, 'Go to previous diagnostic message')
nmap(']d', vim.diagnostic.goto_next, 'Go to next diagnostic message')
nmap('<leader>e', vim.diagnostic.open_float, 'Open floating diagnostic message')
nmap('<leader>q', vim.diagnostic.setloclist, 'Open diagnostics list')

-- save file
nmap('<leader>w', vim.cmd.update, 'Save current buffer')

-- remap <Esc> key
allmap('<C-j>', '<Esc>', '')
allmap('<C-k>', '<Esc>', '')

-- Exit with <C-q>
nmap('<C-q>', vim.cmd.q, 'Exit with CTRL + q')

-- Jump to start and end of line using the home row keys
nmap('H', '^', 'Jump to line start')
nmap('L', '$', 'Jump to line end')

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Hals-page jumps should center cursor
nmap('<C-d>', '<C-d>zz', 'Hals-page jump centers cursor')
nmap('<C-u>', '<C-u>zz', 'Hals-page jump centers cursor')

-- Moves trough search and keep cursor centered
nmap('n', 'nzzzv', 'Next search item while cursor is centered')
nmap('N', 'Nzzzv', 'Previous search item while cursor is centered')

-- delete selection and throw it away, then paste over it
-- this keeps contents of yank register uncahged after pasting-over some content
vim.keymap.set("x", "<leader>p", [["_dP]])
-- Same as above just paste from system register
vim.keymap.set("x", "<leader>P", [["_d"+P]])

-- Format current buffer with lsp support
nmap('<leader>f', vim.lsp.buf.format, '[f]ormat current buffer with lsp')
