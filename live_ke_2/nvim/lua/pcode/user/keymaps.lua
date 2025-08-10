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

-- duplicate line visual blok
keymap("x","<S-Down>",":'<,'>t'><cr>",opts)
keymap("x","<S-M-Down>",":'<,'>t'><cr>",opts)
keymap("x","<S-Up>",":'<,'>t-1<cr>",opts)
keymap("x","<S-M-Up>",":'<,'>t-1<cr>", opts)

--move text up and down
keymap("x","<A-Down>",":move '>+1<CR>gv-gv", opts)
keymap("x","<A-Up>",":move '<-2<CR>gv-gv", opts)
keymap("n","<M-Down>","<cmd>m+<cr>", opts)
keymap("i","<M-Down>","<cmd>m+<cr>", opts)
keymap("n","<M-Up>","<cmd>m-2<cr>", opts)
keymap("i","<M-Up>","<cmd>m-2<cr>", opts)

-- colse window
keymap("n","q","<cmd>q<cr>",opts)

-- window navigation
keymap("n", "<c-h>", "<C-w>h", opts)
keymap("n", "<c-j>", "<C-w>j", opts)
keymap("n", "<c-k>", "<C-w>k", opts)
keymap("n", "<c-l>", "<C-w>l", opts)
keymap("n", "<c-a>", "gg0v$G", opts)
keymap("i", "<c-a>", "<esc>gg0v$G", opts)
keymap("n", "<c-c>", '"+y', opts)
keymap("v", "<c-c>", '"+y', opts)
keymap("x", "<c-c>", '"+y', opts)
keymap("n", "<c-v>", '"+P', opts)
keymap("v", "<c-v>", '"+P', opts)
keymap("i", "<c-v>", "<esc>pa<Left>", opts)
keymap("x", "<c-v>", '"+P', opts)
keymap("n", "<c-z>", "<cmd>undo<CR>", opts)
keymap("x", "<c-z>", "<esc><cmd>undo<CR>", opts)
keymap("v", "<c-z>", "<esc><cmd>undo<CR>", opts)
keymap("i", "<c-z>", "<esc><cmd>undo<CR>", opts)

-- Navigasi buffer
keymap("n","<S-l>",":bnext<CR>",opts)
keymap("n","<S-Left>","<Esc>:bnext<CR>",opts)
keymap("n","<S-h>",":bprevious<CR>",opts)
keymap("n","<S-Right>","<Esc>:bprevious<CR>",opts)

-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- stay indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

