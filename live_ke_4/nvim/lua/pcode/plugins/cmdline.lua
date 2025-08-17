return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts={
    messages={
      enabled = false,
    },
    notify = {
			enabled = false,
		},
		lsp = {
			progress = {
				enabled = false,
			},
			hover = {
				enabled = false,
			},
			signature = {
				enabled = false,
			},
		},
		presets = {
			-- Preset ini menyesuaikan bentuk cursor pada mode commond
			command_bar_cursor = {
				enabled = true,
				cursor_shape = "ver30", -- "ver" menandakan bar vertikal, 30 adalah tinggi dalam persen
			},
		},
  },
  keys={
    {
      "<S-Enter>",
			function()
				require("noice").redirect(vim.fn.getcmdline())
			end,
			mode = "c",
			desc = "Redirect Cmdline",
    },
    {
			"<c-f>",
			function()
				if not require("noice.lsp").scroll(4) then
					return "<c-f>"
				end
			end,
			silent = true,
			expr = true,
			desc = "Scroll forward",
			mode = { "i", "n", "s" },
		},
		{
			"<c-b>",
			function()
				if not require("noice.lsp").scroll(-4) then
					return "<c-b>"
				end
			end,
			silent = true,
			expr = true,
			desc = "Scroll backward",
			mode = { "i", "n", "s" },
		},
  }
}
