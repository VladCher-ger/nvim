return{
  "folke/tokyonight.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require('tokyonight').setup{

    style = "night",
    
    styles = {
    functions = {}
  },
on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_none,
      fg = c.fg_none,
    }
    hl.TelescopeBorder = {
      bg = c.bg_none,
      fg = c.bg_none,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_none,
      fg = c.bg_none,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_none,
      fg = c.bg_none,
    }
  end,  

    }
end,
}
