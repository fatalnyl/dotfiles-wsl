-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Custom ]] 

-- Suggested keymaps https://medium.com/unixification/must-have-neovim-keymaps-51c283394070
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = 'Move selected text UP in visual mode'})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = 'Move selected text DOWN in visual mode'})

function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- These could be replaced by mini.move.
map("n", "<C-Up>", ":resize -2<CR>", {desc = "Resize window UP"})
map("n", "<C-Down>", ":resize +2<CR>", {desc = "Resize window DOWN"})
map("n", "<C-Left>", ":vertical resize -2<CR>", {desc = "Resize window LEFT"})
map("n", "<C-Right>", ":vertical resize +2<CR>", {desc = "Resize window RIGHT"})

-- terminal
map("t", "<C-Up>", "<cmd>resize -2<CR>")
map("t", "<C-Down>", "<cmd>resize +2<CR>")
map("t", "<C-Left>", "<cmd>vertical resize -2<CR>")
map("t", "<C-Right>", "<cmd>vertical resize +2<CR>")

map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "<TAB>", ":bn<CR>", {desc = "Next Buffer"})
map("n", "<S-TAB>", ":bp<CR>", {desc = "Previous Buffer"})
map("n", "<leader>bd", ":bd<CR>", {desc = "Delete Buffer"}) -- from Doom Emacs

-- Scroll and center
-- Add buffer=true to avoid conflict. https://github.com/folke/which-key.nvim/issues/839
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'Scroll Down', buffer=true, noremap=true})
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'Scroll Up' , buffer=true, noremap=true})
vim.keymap.set("n", "n", "nzzzv", { desc = 'Next Search Result' , buffer=true, noremap=true})
vim.keymap.set("n", "N", "Nzzzv", { desc = 'Previous Search Result' , buffer=true, noremap=true})

-- Keep cursor at the current position when joining lines
vim.keymap.set("n", "J", "mzJ`z", {desc = "Join lines and keep cursor at current position", noremap=true})

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
