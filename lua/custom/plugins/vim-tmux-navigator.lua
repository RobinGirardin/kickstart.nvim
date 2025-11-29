-- Enable a smooth transition between Neovim and Tmux window pane using '<C-hjkl>'
return {
				"christoomey/vim-tmux-navigator",
				keys = {
								{
												"<c-h>",
												function()
																vim.cmd(":TmuxNavigateLeft")
												end,
								},
								{
												"<c-j>",
												function()
																vim.cmd(":TmuxNavigateDown")
												end,
								}
								{
												"<c-k>",
												function()
																vim.cmd(":TmuxNavigateUp")
												end,
								}
								{
												"<c-l>",
												function()
																vim.cmd(":TmuxNavigateRight")
												end,
								}
				}
}
