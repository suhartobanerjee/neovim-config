function customPythonMappings()
    vim.g.maplocalleader = "\\"

    -- to split and open terminal
    vim.keymap.set('n', '<localleader>ps', '<C-W>s<C-W>j:term<CR>iconda activate ')

    local opts = {silent = true}
    vim.keymap.set({'n', 'i', 'v'}, '<localleader><CR>', '<Esc>:lua SendIndentedBlock()<CR>i') --:SlimeSend<CR>
    --vim.keymap.set({'n', 'i', 'v'}, '<localleader>cc', 'SendIndentedBlock', opts)
    --vim.keymap.set({'n', 'i', 'v'}, '<localleader><localleader><CR>', '<Esc>:IPythonCellExecuteCellVerbose<CR>i', opts)
    --vim.keymap.set({'n', 'i', 'v'}, '<localleader>ll', '<Esc>:IPythonCellClear<CR>i', opts)
    --vim.keymap.set({'n', 'i', 'v'}, '<localleader>nc', '<Esc>:IPythonCellNextCell<CR>i', opts)
    --vim.keymap.set({'n', 'i', 'v'}, '<localleader>pc', '<Esc>:IPythonCellPrevCell<CR>i', opts)
end

function SendIndentedBlock()
    -- Get the current line number and its indentation level
    local current_line = vim.fn.line('.')
    local current_indent = vim.fn.indent(current_line)

    -- Find the start and end of the indented block
    local start_line = current_line
    --while start_line > 1 and vim.fn.indent(start_line - 1) == current_indent do
    --    start_line = start_line - 1
    --end

    local end_line = current_line
    local diff = 0
    while end_line < vim.fn.line('$') and vim.fn.indent(end_line + 1) > current_indent do
        end_line = end_line + 1
        diff = diff + 1
    end

    -- Save the indented block to a temporary buffer
    if diff > 0 then
        vim.cmd("normal V" .. diff .. "j")
        vim.cmd("'<,'>SlimeSend")
    else
        vim.cmd("normal V")
        vim.cmd("SlimeSend")
    end

    -- Execute SlimeSend with the indented block

    -- move to end_line
    end_line = end_line + 1
    vim.fn.execute(end_line)
end

-- Set these shortcuts only for r buffers
vim.api.nvim_create_augroup('slimePython', {clear = true})
vim.api.nvim_create_autocmd('Filetype', {
    callback = function() customPythonMappings() end,
    pattern = {'py', 'python'},
    group = 'slimePython'
})
