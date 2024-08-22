vim.keymap.set("n", "<leader>ff", "<Esc>:call fzf#run(fzf#wrap({'options': ['--preview', 'bat {}']}))<CR>")
