-- [[ Setting options ]]

-- apsolute on current line, relative everywhere else
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- long living undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- highlight search match as it is being typed
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- nice colors
vim.opt.termguicolors = true

-- empty space at the bottom of buffer
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

-- fast update time
vim.opt.updatetime = 250

-- mark when 80 chars reached in line
vim.opt.colorcolumn = '80'

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Enable break indent
vim.opt.breakindent = true

-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'
