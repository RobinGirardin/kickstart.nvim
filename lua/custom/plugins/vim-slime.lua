-- Enable to send selected lines of code to a other terminal window.
-- Works great with TMUX
return {
  'jpalardy/vim-slime',
  config = function()
    vim.g.slime_target = 'neovim'
    vim.g.slime_suggest_default = 1
    vim.g.slime_menu_config = 1
    vim.g.slime_neovim_ignore_unlisted = 0
    vim.g.slime_neovim_menu_order = {
      { name = 'buffer name: ' },
      { pid = 'shell process identifier: ' },
      { jobid = 'neovim internal job identifier: ' },
      { term_title = 'process or pwd: ' }
    }
    vim.g.slime_neovim_menu_delimiter = ' | '
    vim.g.slime_python_ipython = 1
    vim.g.slime_bracketed_paste = 1
    vim.keymap.set('v', '<leader>ss', '<Plug>SlimeRegionSend')
  end,
}
