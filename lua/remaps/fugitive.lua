vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- push remap
vim.keymap.set("n", "<leader>gp", function()
    vim.cmd.Git('push')
end)

vim.keymap.set("n", "<leader>gP", function()
    vim.cmd.Git('pull --rebase')
end)

vim.keymap.set("n", "<leader>gl", function()
    vim.cmd.Git('log --graph --all --decorate --raw')
end)
