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

vim.cmd[[colorscheme tokyonight]]

vim.api.nvim_set_hl(0, "LineNrAbove", { fg ="white"})
vim.api.nvim_set_hl(0, "LineNr", { fg = "yellow" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "white" })

vim.api.nvim_set_hl(0, "Normal", {bg="none", ctermbg = "none", ctermfg="none", fg="none",})
vim.api.nvim_set_hl(0, "NonText", {bg="none", ctermbg = "none", ctermfg="none", fg="none",})
vim.api.nvim_set_hl(0, "StatusLine", {bg="none", ctermbg = "none", ctermfg="none", fg="none",})
vim.api.nvim_set_hl(0, "VertSplit", {bg="none", ctermbg = "none", ctermfg="none", fg="none",})
--[[
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
--]]
