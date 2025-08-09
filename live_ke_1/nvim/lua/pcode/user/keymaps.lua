local keymap = vim.keymap.set
local opts = {noremap=true, silent=true}

-- Remap space leader keys
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- MODES
-- mormal mode = "n"
-- insert mode = "i"
-- visual mode = "v"
-- visual block mode = "x"
-- term mode = "t"
-- command mode = "c"

for _, mode in ipairs({ "i", "v", "n", "x" }) do
	-- duplicate line
	keymap(mode, "<S-Down>", "<cmd>t.<cr>", opts)
	keymap(mode, "<S-Up>", "<cmd>t -1<cr>", opts)
	keymap(mode, "<S-M-Down>", "<cmd>t.<cr>", opts)
	keymap(mode, "<S-M-Up>", "<cmd>t -1<cr>", opts)
	-- save file
	keymap(mode, "<C-s>", "<cmd>silent! w<cr>", opts)
end
