--             _                                       _
--  _ ____   _(_)_ __ ___         ___ _ __ ___  _ __  | |_   _  __ _ 
-- | '_ \ \ / / | '_ ` _ \ _____ / __| '_ ` _ \| '_ \ | | | | |/ _` |
-- | | | \ V /| | | | | | |_____| (__| | | | | | |_) || | |_| | (_| |
-- |_| |_|\_/ |_|_| |_| |_|      \___|_| |_| |_| .__(_)_|\__,_|\__,_|
--                                             |_|
--
-- Configure autocompletion with nvim-cmp
--
--

local cmp = require("cmp")
local lspkind = require("lspkind")
local luasnip = require("luasnip")

-- Load snippets?
require("luasnip/loaders/from_vscode").lazy_load()

-- Help backspace work as expected in super tab
local check_backspace = function()
	local col = vim.fn.col "." - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

cmp.setup {
    mapping = {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-y>"] = cmp.mapping(
            cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Insert,
                select = true,
            },
            { "i", "c" }
        ),

        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),

        ["<C-q>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif check_backspace() then
				fallback()
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
    },

    sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "spell" },
        { name = "crates" },
        { name = "treesitter" },
        { name = "cmp_git" },
        { name = "npm" },
        { name = "path" },
        { name = "cmdline" },
        { name = "buffer" },
    }),

    formatting = {
        format = lspkind.cmp_format {
            with_text = true,

            menu = {
                buffer = "[buf]",
                cmdline = "[cmd]",
                crates = "[crates]",
                cmp_git = "[git]",
                luasnip = "[snip]",
                npm = "[npm]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[nvim_lua]",
                path = "[path]",
                spell = "[spell]",
                treesitter = "[tree]",
            },
        },
    },

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    experimental = {
        ghost_text = true,
    },
}
