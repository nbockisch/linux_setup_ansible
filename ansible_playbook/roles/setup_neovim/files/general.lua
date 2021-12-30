--                                  _   _             
--   __ _  ___ _ __   ___ _ __ __ _| | | |_   _  __ _ 
--  / _` |/ _ \ '_ \ / _ \ '__/ _` | | | | | | |/ _` |
-- | (_| |  __/ | | |  __/ | | (_| | |_| | |_| | (_| |
--  \__, |\___|_| |_|\___|_|  \__,_|_(_)_|\__,_|\__,_|
--  |___/                                             
--
-- General editor settings not tied to any plugins
--

-- General settings
vim.o.compatible = false vim.o.errorbells = false
vim.o.hidden = true
vim.o.swapfile = false
vim.bo.undofile = true
vim.o.undodir = os.getenv("HOME") .. '/.config/nvim/undodir'

-- Editor appearance settings
vim.wo.relativenumber = true
vim.wo.scrolloff = 8
vim.wo.signcolumn = "yes"
vim.wo.wrap = false
vim.o.title = true

-- Colors
vim.o.termguicolors = true

vim.o.background = "dark"
vim.g.gruvbox_material_background = "hard"
vim.cmd "colorscheme gruvbox-material"

-- Tab settings
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.smartindent = true

-- Search settings
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.incsearch = true 
vim.o.smartcase = true

-- Split settings
vim.o.splitbelow = true
vim.o.splitright = true

-- Netrw settings
vim.g['netrw#netrw_altfile'] = 1
vim.g['netrw#netrw_altv'] = 1
vim.g['netrw#netrw_banner'] = 0
vim.g['netrw#netrw_browse_split'] = 3
vim.g['netrw#netrw_liststyle'] = 3
vim.g['netrw#netrw_winsize'] = 25
