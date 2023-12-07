-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap

----------------------- General Keymaps -------------------

-- use jk to exit insert mode
keymap("i", "jk", "<ESC>", {})

-- clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", {})

-- Save the current buffer in normal mode
keymap("n", "<leader>ss", ":w<CR>", {})

-- Save the current buffer in visual mode and return to normal mode
keymap("v", "<leader>ss", "<Esc>:w<CR>", {})

-- Copy to clipboard
keymap("v", "<leader>cc", '"+y', {})

-- highlight under cursor
keymap("n", "vv", "*", {})

-- delete single character without copying into register
keymap("n", "x", '"_x', {})

-- increment/decrement numbers
keymap("n", "<leader>+", "<C-a>", {})
keymap("n", "<leader>-", "<C-x>", {})

-- window management
keymap("n", "<leader>sv", "<C-w>v", {})
keymap("n", "<leader>sh", "<C-w>s", {})
keymap("n", "<leader>sr", ":vertical resize +5<CR>", {})
keymap("n", "<leader>sl", ":vertical resize -5<CR>", {})
keymap("n", "<leader>se", "<C-w>=", {})
keymap("n", "<leader>sx", "<cmd>close<CR>", {})

keymap("n", "<leader>to", "<cmd>tabnew<CR>", {})
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", {})
keymap("n", "<leader>tn", "<cmd>tabn<CR>", {})
keymap("n", "<leader>tp", "<cmd>tabp<CR>", {})
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", {})

local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.list = true -- show whitespace characters
opt.lcs = "space:·" -- show spaces as dots

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
