vim.keymap.set("n", "<C-_>", function() require("Comment.api").toggle.linewise.current() end )
vim.keymap.set("v", "<C-_>",
  "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>"
)
