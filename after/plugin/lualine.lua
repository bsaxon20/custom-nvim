require"battery".setup({})
require('lualine').setup({
<<<<<<< HEAD
    options = { theme = 'catpuccin-mocha' },
    nvimbattery = {
=======
  nvimbattery = {
>>>>>>> 102fca16eaba01a6e30e2d5154d88fae3b23426d
  function()
    return require("battery").get_status_line()
  end,
}
})


