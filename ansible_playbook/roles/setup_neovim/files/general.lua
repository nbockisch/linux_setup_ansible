--[[ Basic editor settings ]]

vim.opt.compatible = false
vim.opt.errorbells = false
vim.opt.hidden = true 
vim.opt.swapfile = false
vim.opt.undofile = true
vim.o.undodir = os.getenv("HOME") .. '/.config/nvim/undodir'

-- Editor appearance settings
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.wrap = false

-- Search settings
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.incsearch = true 
vim.opt.smartcase = true

-- Split settings
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Set color
-- vim.opt.termguicolors = false
vim.opt.background = 'dark'
vim.cmd 'colorscheme PaperColor'
