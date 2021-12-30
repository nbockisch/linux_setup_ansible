--             _                 _            _             
--  _ ____   _(_)_ __ ___       | |___ _ __  | |_   _  __ _ 
-- | '_ \ \ / / | '_ ` _ \ _____| / __| '_ \ | | | | |/ _` |
-- | | | \ V /| | | | | | |_____| \__ \ |_) || | |_| | (_| |
-- |_| |_|\_/ |_|_| |_| |_|     |_|___/ .__(_)_|\__,_|\__,_|
--                                    |_|
--
-- Install and configure language servers for nvim-lsp
--

local lsp_installer = require "nvim-lsp-installer"

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Check keys.lua for the lsp keybindings

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

-- Bootstrap language servers
local servers = {
    "ansiblels",
    "bashls",
    "clangd",
    "pyright",
    "rust_analyzer",
    "sumneko_lua"
}

for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found then
        if not server:is_installed() then
            print("Installing " .. name)
            server:install()
        end
    end
end

lsp_installer.on_server_ready(function(server)
    -- Specify the default options which we'll use to setup all servers
    local default_opts = {
        on_attach = on_attach,
    }

    server:setup(default_opts)
end)

-- Disable in-line virtual text errors
vim.diagnostic.config({virtual_text = false})

-- Set icons for warning messages
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
