vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.statuscolumn = "%s %l %r"

vim.opt.cmdheight = 4 -- Set to your preferred height

vim.cmd [[hi @string guifg=yellow]]

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = 'Highlight on yank',
  callback = function()
    vim.highlight.on_yank()
  end,

})

vim.cmd [[colorscheme tokyonight]]

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "yellow" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "white" })

local config = vim.diagnostic.config

config({ virtual_text = false })
vim.keymap.set("n", "<leader>td", function()
  if config().virtual_text then
    config({ virtual_text = false })
  else
    config({ virtual_text = true })
  end
end)
