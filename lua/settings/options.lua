vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.statuscolumn = "%s %l %r"

vim.cmd [[hi @string guifg=yellow]]

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = 'Highlight on yank',
    callback = function() 
	vim.highlight.on_yank()
    end,
    
})
