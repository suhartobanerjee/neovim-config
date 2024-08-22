-- vim.keymap.set("n", "<leader>fc", "<Esc>:call fzf#run(fzf#wrap({'options': ['--preview', 'bat {}']}))<CR>")
vim.keymap.set("n", "<leader>ff", ":lua require('fzf-lua').files()<CR>")
