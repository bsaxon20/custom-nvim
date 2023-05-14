require"battery".setup({})
require('lualine').setup({
    options = { theme = 'catpuccin-mocha' },
    nvimbattery = {
  nvimbattery = {
  function()
    return require("battery").get_status_line()
  end,
}}})


