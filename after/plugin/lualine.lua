require"battery".setup({})
require('lualine').setup({
    options = { theme = 'rose-pine' },
    nvimbattery = {
  function()
    return require("battery").get_status_line()
  end,
}
})


