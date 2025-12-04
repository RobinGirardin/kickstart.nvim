-- Enable to send selected lines of code to a other terminal window.
-- Works great with TMUX
return {
  'jpalardy/vim-slime',
  config = function()
    vim.g.slime_target = 'tmux'
    vim.g.slime_default_config = { socket_name = 'default', target_pane = '{last}' }
    vim.g.slime_python_ipython = 1
    vim.g.slime_bracketed_paste = 1
    vim.keymap.set('v', '<leader>ss', '<Plug>SlimeRegionSend')
  end,
}
