--        _             _             _             
--  _ __ | |_   _  __ _(_)_ __  ___  | |_   _  __ _ 
-- | '_ \| | | | |/ _` | | '_ \/ __| | | | | |/ _` |
-- | |_) | | |_| | (_| | | | | \__ \_| | |_| | (_| |
-- | .__/|_|\__,_|\__, |_|_| |_|___(_)_|\__,_|\__,_|
-- |_|            |___/                            
--
-- Load all plugins and plugin settings
--

-- Bootstrap Paq
local path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if vim.fn.empty(vim.fn.glob(path)) > 0 then
    vim.fn.system {
        'git',
        'clone',
        '--depth=1',
        'https://github.com/savq/paq-nvim.git',
        path }
end

vim.cmd("packadd paq-nvim")

-- List plugins and make sure they're installed
paq = require("paq") {
    "savq/paq-nvim";
    "nvim-lua/plenary.nvim"; -- Required by some plugins

    -- Telescope file navigation
    "nvim-lua/plenary.nvim";
    "nvim-telescope/telescope.nvim";

    -- LSP plugins
    "neovim/nvim-lspconfig";
    "williamboman/nvim-lsp-installer";

    -- Completion
    "hrsh7th/nvim-cmp";
    "onsails/lspkind-nvim";
    ---- Completion sources
    "hrsh7th/cmp-buffer";
    "hrsh7th/cmp-path";
    "hrsh7th/cmp-nvim-lua";
    "hrsh7th/cmp-nvim-lsp";
    "hrsh7th/cmp-cmdline";
    "ray-x/cmp-treesitter";
    "saecki/crates.nvim";
    "f3fora/cmp-spell";
    "David-Kunz/cmp-npm";
    "petertriho/cmp-git";
    ---- Snippet engine
    "L3MON4D3/LuaSnip";
    "rafamadriz/friendly-snippets";

    -- Bar
    "nvim-lualine/lualine.nvim";
    {"kyazdani42/nvim-web-devicons", opt = true};

    -- Treesitter highlighting
    {"nvim-treesitter/nvim-treesitter", run = TSUpdate};

    -- General quality of life
    "tpope/vim-surround";
    "tpope/vim-repeat";
    "tpope/vim-commentary";
    "jiangmiao/auto-pairs";

    -- Colors
    "sainnhe/gruvbox-material";
}

vim.cmd("PaqSync")

-- Plugin configs
require("plugin-conf.nvim-lsp")
require("plugin-conf.nvim-treesitter")
require("plugin-conf.nvim-cmp")
require("plugin-conf.lualine")
