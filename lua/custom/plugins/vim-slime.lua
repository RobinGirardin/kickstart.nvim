-- Enable to send selected lines of code to a other terminal window.
-- Works great with TMUX
return {
				"jpalardy/vim-slime",
				opts = {
								vim.g.slime_target = 'tmux'
								-- The target is always the last tmux pane
								vim.g.slime_default_config = { socket_name = "default", target_pane = "{last}" }
								-- Keeps python identation sent in ipython in check 
								vim.g.slime_python_ipython = 1
								vim.g.slime_bracketed_paste = 1
				}
}
