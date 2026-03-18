-- plugins/quarto.lua
return {
  'quarto-dev/quarto-nvim',
  dependencies = {
    'jmbuhr/otter.nvim',
    'hrsh7th/nvim-cmp',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
  },
  keys = {
    { '<leader>qp', '<cmd>QuartoPreview<CR>', mode = 'n', desc = 'Quarto Preview' },
  },
  ft = { 'quarto' },
  opts = {
    debug = true,
    closePreviewOnExit = true,
    lspFeatures = {
      enabled = true,
      chunks = 'all',
      languages = { 'r', 'python', 'julia', 'bash', 'html' },
      diagnostics = {
        enabled = true,
        triggers = { 'BufWritePost' },
      },
      completion = {
        enabled = true,
      },
    },
  },
}
