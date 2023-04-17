vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- push remap
local bufnr = vim.api.nvim_get_current_buf()
local opts = {buffer = bufnr, remap = false}
vim.keymap.set("n", "<leader>gp", function()
    vim.cmd.Git('push')
end, opts)

vim.keymap.set("n", "<leader>gP", function()
    vim.cmd.Git({'pull', '--rebase'})
end, opts)


vim.keymap.set("n", "<leader>gl", function()
    vim.cmd.Git({'log', '--raw'})
end, opts)
