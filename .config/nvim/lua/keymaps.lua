vim.g.mapleader = ' '

vim.api.nvim_set_keymap("n", "<Leader>dd", ":lua require('telescope.builtin').git_files()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<CR>", 'compe#confirm("<CR>")', { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
