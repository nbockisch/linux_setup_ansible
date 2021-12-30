--             _                 _                      _ _   _            _             
--  _ ____   _(_)_ __ ___       | |_ _ __ ___  ___  ___(_) |_| |_ ___ _ __| |_   _  __ _ 
-- | '_ \ \ / / | '_ ` _ \ _____| __| '__/ _ \/ _ \/ __| | __| __/ _ \ '__| | | | |/ _` |
-- | | | \ V /| | | | | | |_____| |_| | |  __/  __/\__ \ | |_| ||  __/ |_ | | |_| | (_| |
-- |_| |_|\_/ |_|_| |_| |_|      \__|_|  \___|\___||___/_|\__|\__\___|_(_)|_|\__,_|\__,_|
--
-- Install and configure treesitter highlighting
--

require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {},
    },

    indent = {
        enable = false,
        disable = {},
    },

    ensure_installed = "all" 
}
