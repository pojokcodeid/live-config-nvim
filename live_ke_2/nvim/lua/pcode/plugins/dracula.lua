return {
  "Mofiqul/dracula.nvim",
  priority=1000,
  opts = function()
    local colors = require("dracula").colors()
    return {
      colors = {
				menu = colors.bg,
				selection = "#363848",
			},
			italic_comment = true,
			lualine_bg_color = colors.bg,
    }
  end,
  config=function(_, opts)
    require("dracula").setup(opts)
    vim.cmd("colorscheme dracula")
  end,
}
