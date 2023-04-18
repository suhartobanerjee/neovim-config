function customNvimRMappings()
   vim.keymap.set({'n', 'v', 'i'}, '<localleader>rs', '<Esc><Plug>RStarti', {buffer = 0, remap = true})
    
   vim.keymap.set({'n', 'v', 'i'}, '<localleader><CR>', '<Esc><Plug>RDSendLinei', {buffer = 0, remap = true})

   vim.keymap.set({'n', 'v', 'i'}, '<localleader>m',  ' %>% ', {buffer = 0, remap = true}) 

   vim.keymap.set({'n', 'v', 'i'}, '<localleader>c', '<Esc><Plug>RToggleCommenti<C-o>$', {buffer = 0, remap = true})

   vim.keymap.set({'n', 'v', 'i'}, '<localleader>ro', '<Esc><Plug>RUpdateObjBrowseri', {buffer = 0, remap = true})

   vim.keymap.set({'n', 'v', 'i'}, '<localleader>l', '<Esc><Plug>RClearConsolei', {buffer = 0, remap = true})

   -- Keymap to save the current plot to the tmp_plot loc
   vim.keymap.set('i', '<localleader>ss', '<CR>ggsave(tmp_plot)')

   vim.keymap.set('n', '<leader>rz', ':qa!<CR>')

   -- keymap to write traceback(), run it and then delete the line
   vim.keymap.set('i', '<localleader>tb', 'traceback()<Esc><Plug>RSendLineS')

end



-- Set these shortcuts only for r buffers
vim.api.nvim_create_augroup('myNvimR', {clear = true})
vim.api.nvim_create_autocmd('Filetype', {
    callback = function() customNvimRMappings() end,
    pattern = {'R', 'r'},
    group = 'myNvimR'
})
