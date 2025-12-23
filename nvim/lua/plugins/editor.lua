return {
  -- Plugin 1: Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8', -- I updated this. v0.2.0 is extremely old!
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
  },

  -- Plugin 2: Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false, -- Load immediately at startup
    keys = {
      { "<C-b>", ":Neotree toggle<CR>", desc = "Toggle File Explorer" },
    },
    opts = {
      window = {
        width = 20,
      },
    },
  }
}
