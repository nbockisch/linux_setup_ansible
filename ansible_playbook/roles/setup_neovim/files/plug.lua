-- [[ Paq Settings ]]

-- Ensure paq is installed
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

-- Manage plugins
require "paq" {
    "savq/paq-nvim"; -- Package manager
    "dylanaraps/wal.vim"; -- Pywal color scheme
    "NLKNguyen/papercolor-theme"; -- Paper color scheme
    "kyazdani42/nvim-web-devicons"; -- File icons
    "jiangmiao/auto-pairs"; -- Automatic pairing of braces and quotes

    -- LSP plugins
    "neovim/nvim-lspconfig";
    "glepnir/lspsaga.nvim";
    
    -- Autocomplete plugins
    "hrsh7th/cmp-nvim-lsp";
    "hrsh7th/cmp-buffer";
    "hrsh7th/cmp-path";
    "hrsh7th/cmp-cmdline";
    "hrsh7th/nvim-cmp";
    "hrsh7th/cmp-vsnip";
    "hrsh7th/vim-vsnip";
    "onsails/lspkind-nvim"; -- For fancy icons in the completion menu

    -- Treesitter highlighting
    {"nvim-treesitter/nvim-treesitter", run = TSUpdate};

    -- Telescope FZF
    "nvim-lua/plenary.nvim";
    "nvim-telescope/telescope.nvim";

    -- Status bar
    "nvim-lualine/lualine.nvim";
}

-- Plugin configurations
require('plug-confs.netrw-conf')
require('plug-confs.nvim-lspconfig-conf')
require('plug-confs.lspsaga-conf')
require('plug-confs.nvim-cmp-conf')
require('plug-confs.nvim-treesitter-conf')
require('plug-confs.lualine-conf')
