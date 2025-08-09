return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    prioriry = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- Ensure it loads first
  --   opts = {
  --     disable_background = true,
  --   },
  -- },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     variant = "dawn", -- 'main', 'moon', or 'dawn'
  --     disable_background = true,
  --     extend_background_behind_borders = false,
  --   },
  --   config = function(_, opts)
  --     require("rose-pine").setup(opts)
  --     vim.cmd("colorscheme rose-pine")
  --   end,
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = true,
  --   opts = { style = "moon", transparent = true },
  -- },
  -- {
  --   "marko-cerovac/material.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.material_style = "oceanic"
  --     require("material").setup({
  --       disable = {
  --         background = true,
  --         term_colors = false,
  --         eob_lines = true,
  --       },
  --       high_visibility = {
  --         lighter = false,
  --         darker = true,
  --       },
  --     })
  --   end,
  -- },
}
