return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    require("telescope").setup {
      pickers = {
        find_files = {
          theme = "dropdown"
        }
      },
      extensions = {
        fzf = {}
      }
    }
    require('telescope').load_extension('fzf')

    local telescope = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', telescope.find_files)
    vim.keymap.set('n', '<leader>fh', telescope.help_tags)

    vim.keymap.set('n', '<leader>ec', function()
      telescope.find_files { cwd = vim.fn.stdpath("config") }
    end)

    require('config.telescope.multigrep').setup()
  end
}
