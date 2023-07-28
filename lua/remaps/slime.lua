function customPythonMappings()
    vim.g.maplocalleader = '\\'

    -- to split and open terminal
    vim.keymap.set('n', '<localleader>ps', '<C-W>s<C-W>j:term<CR>imamba activate ')

    local opts = {silent = true}
    vim.keymap.set({'n', 'i', 'v'}, '<localleader><CR>', '<Esc>:IPythonCellExecuteCellVerboseJump<CR>i', opts)
    vim.keymap.set({'n', 'i', 'v'}, '<localleader><localleader><CR>', '<Esc>:IPythonCellExecuteCellVerbose<CR>i', opts)
    vim.keymap.set({'n', 'i', 'v'}, '<localleader>ll', '<Esc>:IPythonCellClear<CR>i', opts)
    vim.keymap.set({'n', 'i', 'v'}, '<localleader>nc', '<Esc>:IPythonCellNextCell<CR>i', opts)
    vim.keymap.set({'n', 'i', 'v'}, '<localleader>pc', '<Esc>:IPythonCellPrevCell<CR>i', opts)
end


-- Set these shortcuts only for r buffers
vim.api.nvim_create_augroup('slimePython', {clear = true})
vim.api.nvim_create_autocmd('Filetype', {
    callback = function() customPythonMappings() end,
    pattern = {'py'},
    group = 'slimePython'
})
