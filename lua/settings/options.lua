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

vim.cmd [[
  hi Normal guibg=none
  hi NonText guibg=none
  hi Normal ctermbg=none
  hi NonText ctermbg=none
]]
