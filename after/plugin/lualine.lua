require"battery".setup({})
require('lualine').setup({
  nvimbattery = {
  function()
    return require("battery").get_status_line()
  end,
}
})


