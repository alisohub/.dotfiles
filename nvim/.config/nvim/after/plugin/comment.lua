require('nvim_comment').setup({
    comment_empty = false,
    create_mappings = false,
})

vim.keymap.set({'n', 'v'}, '<C-_>', ':CommentToggle<CR>')
