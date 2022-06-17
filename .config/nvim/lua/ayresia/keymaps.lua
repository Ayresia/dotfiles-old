local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Leader>dd", require('telescope.builtin').git_files, opts)
vim.keymap.set("n", "<Leader>lg", require('telescope.builtin').live_grep, opts)
vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, opts)
