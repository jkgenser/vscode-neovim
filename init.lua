local g = vim.g
local o = vim.o
local map = vim.keymap.set

g.mapleader = ' '
g.maplocalleader = ' '

o.clipboard = 'unnamedplus'
o.cursorline = true
o.cursorlineopt = 'number'
o.mouse = 'a'
o.timeoutlen = 400
o.ignorecase = true
o.smartcase = true

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })


-- Comment
map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

if vim.g.vscode then
    require('vscodesettings')
end
