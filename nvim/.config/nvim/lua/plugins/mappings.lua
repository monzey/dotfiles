return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<A-j>"] = { "<C-w>h", desc = "Move to left window" },
          ["<A-m>"] = { "<C-w>l", desc = "Move to right window" },
          ["<A-k>"] = { "<C-w>j", desc = "Move to down window" },
          ["<A-l>"] = { "<C-w>k", desc = "Move to up window" },
          ["<C-K>"] = { "<cmd>bnext<cr>", desc = "Move to next buffer" },
          ["<C-J>"] = { "<cmd>bprevious<cr>", desc = "Move to previous buffer" },
          ["<Leader>s"] = { "<cmd>Spectre<cr>", desc = "Search globally" },
        },
      },
    },
  },
}