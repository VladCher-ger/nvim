return {
  require('lazy').setup({
    {
      'glepnir/nerdicons.nvim',
      cmd = 'NerdIcons',
      config = function()
        require('nerdicons').setup({

        })
      end
    }
  })
}
