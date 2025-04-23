return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  build = "make",
  opts = {
    provider = "openai",
    claude = {
      endpoint = os.getenv("AVANTE_ANTHROPIC_ENDPOINT") or "https://api.anthropic.com",
      model = "claude-3-5-sonnet-20240620",
      timeout = 30000, -- Timeout in milliseconds
      temperature = 0,
      -- max_tokens = 4096,
    },
    openai = {
      endpoint = os.getenv("AVANTE_OPENAI_ENDPOINT") or "https://api.openai.com/v1",
      model = "gpt-4o",
      timeout = 30000, -- Timeout in milliseconds
      temperature = 0,
      max_completion_tokens = 8192,
    },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua",            -- for file_selector provider fzf
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    {
      "zbirenbaum/copilot.lua",
      event = "InsertEnter",
      opts = {}, -- for providers='copilot'
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
