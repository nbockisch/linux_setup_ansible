--   _                    _             
--  | | _____ _   _ ___  | |_   _  __ _ 
--  | |/ / _ \ | | / __| | | | | |/ _` |
--  |   <  __/ |_| \__ \_| | |_| | (_| |
--  |_|\_\___|\__, |___(_)_|\__,_|\__,_|
--            |___/                     
--
-- Set keybindings across all core functionality and plugins
--

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

-- Exit terminal mode with ESC
vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', {noremap = true})

-- Toggle file explorer
vim.api.nvim_set_keymap('n', '<leader>e', ':Lex<CR>', {noremap = true})

-- Relescope keybindings
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>', 
{noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>', {
noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<CR>', {noremap = true})
-- Default keybindings for telescope
-- <C-n>/<Down>         Next item
-- <C-p>/<Up>   Previous item
-- j/k  Next/previous (in normal mode)
-- H/M/L        Select High/Middle/Low (in normal mode)
-- 'gg/G'       Select the first/last item (in normal mode)
-- <CR>         Confirm selection
-- <C-x>        Go to file selection as a split
-- <C-v>        Go to file selection as a vsplit
-- <C-t>        Go to a file in a new tab
-- <C-u>        Scroll up in preview window
-- <C-d>        Scroll down in preview window
-- <C-/>        Show mappings for picker actions (insert mode)
-- ?    Show mappings for picker actions (normal mode)
-- <C-c>        Close telescope
-- <Esc>        Close telescope (in normal mode)
-- <Tab>        Toggle selection and move to next selection
-- <S-Tab>      Toggle selection and move to prev selection
-- <C-q>        Send all items not filtered to quickfixlist (qflist)
-- <M-q>        Send all selected items to qflist

-- Lsp keybindings
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true}) -- Jump to declaration
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true}) -- Jump to definition
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true}) -- List all implementations for the symbol under the cursor
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})  -- Get information for symbol under the cursor
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {noremap = true}) -- Display signature information for symbol under cursor
vim.api.nvim_set_keymap('n', 'gtd', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {noremap = true}) -- Jumps to definition of type of symbol under cursor
vim.api.nvim_set_keymap('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true}) -- Rename all references to symbol under cursor
vim.api.nvim_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true}) -- Select code action
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true}) -- List all references to the symbol under the cursor
vim.api.nvim_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {noremap = true}) -- Open a window with diagnostics
vim.api.nvim_set_keymap('n', 'gp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true}) -- Jump to previous diagnostic
vim.api.nvim_set_keymap('n', 'gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true}) -- Jump to next diagnostic

-- Nvim-cmp keybindings
-- Check nvim-cmp config for keybindings
