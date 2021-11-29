-- [[ Keyboard Bindings ]]
-- Leader
vim.g.mapleader = ' '

-- Tab bindings
vim.api.nvim_set_keymap('n', '<Tab>', 'gt', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', 'gT', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-t>', ':tabnew<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-h>', ':tabmove -<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-l>', ':tabmove +<CR>', {noremap = true})

-- Split resizing
vim.api.nvim_set_keymap('n', '<Up>', ':resize +2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Down>', ':resize -2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Left>', ':vertical resize +2<CR>', 
    {noremap = true})
vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize -2<CR>', 
    {noremap = true})

-- Move highlighted text
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true})

-- Show 80 char color column
vim.api.nvim_set_keymap('n', '<leader>c', 
    ':execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>', 
    {noremap = true})

-- Toggle file explorer
vim.api.nvim_set_keymap('n', '<leader>e', ':Lex<CR>', {noremap = true})

-- Show buffer list
vim.api.nvim_set_keymap('n', '<leader>b', ':buffers<CR>', {noremap = true})

-- Exit terminal mode with ESC
vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', {noremap = true})

-- Function to set keys for LSP on attachment
on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts) -- Jump to declaration
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts) -- Jump to definition
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts) -- List all implementations for the symbol under the cursor
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)  -- Get information for symbol under the cursor
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts) -- Display signature information for symbol under cursor
  buf_set_keymap('n', 'gtd', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts) -- Jumps to definition of type of symbol under cursor
  buf_set_keymap('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts) -- Rename all references to symbol under cursor
  buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts) -- Select code action
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts) -- List all references to the symbol under the cursor
  buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts) -- Open a window with diagnostics
  buf_set_keymap('n', 'gp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts) -- Jump to previous diagnostic
  buf_set_keymap('n', 'gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts) -- Jump to next diagnostic

end

-- Key mappings for autocomplete
local cmp = require('cmp')

nvim_cmp_mapping = {
  ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
  ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
  ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
  ['<C-e>'] = cmp.mapping({
	i = cmp.mapping.abort(),
	c = cmp.mapping.close(),
  }),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
}

-- Key mappings for telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<CR>', {noremap = true})
-- Default keybindings for telescope
-- <C-n>/<Down> 	Next item
-- <C-p>/<Up> 	Previous item
-- j/k 	Next/previous (in normal mode)
-- H/M/L 	Select High/Middle/Low (in normal mode)
-- 'gg/G' 	Select the first/last item (in normal mode)
-- <CR> 	Confirm selection
-- <C-x> 	Go to file selection as a split
-- <C-v> 	Go to file selection as a vsplit
-- <C-t> 	Go to a file in a new tab
-- <C-u> 	Scroll up in preview window
-- <C-d> 	Scroll down in preview window
-- <C-/> 	Show mappings for picker actions (insert mode)
-- ? 	Show mappings for picker actions (normal mode)
-- <C-c> 	Close telescope
-- <Esc> 	Close telescope (in normal mode)
-- <Tab> 	Toggle selection and move to next selection
-- <S-Tab> 	Toggle selection and move to prev selection
-- <C-q> 	Send all items not filtered to quickfixlist (qflist)
-- <M-q> 	Send all selected items to qflist

-- Make sure keybindings are usable elsewhere
return { on_attach = on_attach }
