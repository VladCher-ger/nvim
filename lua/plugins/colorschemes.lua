return {
  "folke/tokyonight.nvim",
  lazy = true,
  priority = 1000,
  opts = {

    style = "night",
    transparent = true,

    styles = {
      comments = { italic = false },
      keywords = { italic = false },
      functions = {},
      variables = {},

    },


  },
  config = function(_, opts)
    require('tokyonight').setup(opts)
  end,
}
