-- vim-slime settings
vim.g.slime_target = "tmux"
vim.g.slime_default_config = {
	["socket_name"] = "default",
	["target_pane"] = "{last}",
	["window_id"] = "1",
	["listen_on"] = "unix:/tmp/mykitty",
}
vim.g.slime_bracketed_paste = 1
vim.g.slime_dont_ask_default = 1

-- vim-slime bindings
-- create ipython pane
vim.keymap.set("n", "<C-c>tp", ':silent! !tmux split-window -h ipython<CR>:silent! let g:slime_target = "tmux"<CR>')
-- create ipython kitty window for manim
vim.keymap.set(
	"n",
	"<C-c>mn",
	':silent! !kitty --detach -o allow_remote_control=yes --listen-on unix:/tmp/mykitty manim -p --renderer=opengl %<CR>:silent! let g:slime_target = "kitty"<CR>'
)
vim.keymap.set("n", "<C-c>a", "mzggVG:SlimeSend<CR>`z")