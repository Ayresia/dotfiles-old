local global = vim.o
local window = vim.wo

-- Window Settings
window.relativenumber = true
window.wrap = true

-- Global Settings
global.hidden = true
global.errorbells = false
global.tabstop = 4
global.softtabstop = 4
global.shiftwidth = 4
global.expandtab = true
global.smartindent = true
global.swapfile = false
global.backup = false
global.incsearch = false
global.termguicolors = true
global.scrolloff = 8
global.updatetime = 50
global.completeopt = "menuone,noselect,noinsert"

-- Setting amora's colorscheme to focus (dark mode ver).
vim.g.mode = 'focus'

vim.cmd("set undofile")
vim.cmd("set undodir=~/.config/nvim/undodir")
vim.cmd("set shortmess+=c")
vim.cmd("colorscheme amora")

-- Presence settings
require("presence"):setup({
    neovim_image_text = "Neovim"
})
