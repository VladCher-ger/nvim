vim.cmd [[colorscheme tokyonight]]

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "yellow" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "white" })
vim.api.nvim_set_hl(0, "String", { fg = "yellow" })


vim.api.nvim_set_hl(0, "MyPmenu", { fg = "gray", bg = None })
vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#aaafff", bg = None })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "yellow", bg = None })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "red", bg = None })

