function ColorMyPencil(color)
    color = color or "night-owl"
    vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

return{
	{
		"oxfist/night-owl.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		config = function()
			-- load the colorscheme here
			require("night-owl").setup()
            vim.cmd.colorscheme("night-owl")
            ColorMyPencil()
		end,
	}
}




