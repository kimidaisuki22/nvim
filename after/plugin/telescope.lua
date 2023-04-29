local tel = require("telescope.builtin")

vim.keymap.set('n', '<leader>pf', tel.find_files, {})
vim.keymap.set('n', '<C-p>', tel.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
	tel.grep_string( { search = vim.fn.input("Grep > ") } );
end)
