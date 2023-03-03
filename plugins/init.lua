local data = vim.fn.stdpath "data"
local lazy = require("astronvim.utils")
return {
  ------ disable ------
  ---------------------

  { "goolord/alpha-nvim",           enabled = false },
  { "jay-babu/mason-nvim-dap.nvim", enabled = false },

  ------ Visuals ------
  ---------------------

  {
    "wsdjeg/vim-fetch",
    lazy = false,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    -- lazy = false,
  },

  {
    "kvrohit/mellow.nvim",
    -- lazy = false,
  },

  {
    "gen740/SmoothCursor.nvim",
    cond = vim.g.neovide == nil,
    lazy = false,
    opts = {
      autostart = true,
      fancy = { enable = true },
    },
  },

  {
    "zbirenbaum/neodim",
    init = function() table.insert(astronvim.file_plugins, "neodim") end,
    opts = {
      alpha = 0.75,
    },
  },

  {
    "folke/todo-comments.nvim",
    init = function() table.insert(astronvim.file_plugins, "todo-comments.nvim") end,
    config = true,
  },

  ------ movement ------
  ----------------------

  {
    "jinh0/eyeliner.nvim",
    enabled = false,
    lazy = false,
    opts = {
      highlight_on_key = true,
      dim = true,
    },
  },

  {
    "TheSafdarAwan/find-extender.nvim",
    keys = {
      "f",
      "F",
      "F",
      "T",
      "t",
      "t",
      "T",
    },
    config = true,
  },

  --- Functionality ---
  ---------------------

  -- tagbar, needs ctags to work.
  {
    "preservim/tagbar",
    cmd = "TagbarToggle",
  },

  { "folke/trouble.nvim" },

  {
    "RishabhRD/nvim-cheat.sh",
    dependencies = {
      "RishabhRD/popfix",
    },
  },

  { "gennaro-tedesco/nvim-jqx" },

  -- Renaming --
  --------------
  { "windwp/nvim-spectre" },

  -- Structual Search and Replace
  {
    "cshuaimin/ssr.nvim",
    ft = "<leader>r",
    opts = {
      min_width = 50,
      min_height = 5,
      keymaps = {
        close = "q",
        next_match = "n",
        prev_match = "N",
        replace_all = "<leader><cr>",
      },
    },
  },

  -- Text Manipulation --
  -----------------------

  {
    "echasnovski/mini.ai",
    init = function() table.insert(astronvim.file_plugins, "mini.ai") end,
    config = function() require("mini.ai").setup() end,
  },

  {
    "kylechui/nvim-surround",
    init = function() table.insert(astronvim.file_plugins, "nvim-surround") end,
    opts = {
      keymaps = {
        normal = "sa",
        normal_cur = "sv",
        normal_line = "ss",
        normal_curl_line = "sS",
        visual = "s",
        delete = "sd",
        change = "sr",
      },
      aliases = {
        ["u"] = { "}", "]", ")", ">", '"', "'", "`" },
      },
    },
  },

  ------ git ------
  -----------------

  {
    "sindrets/diffview.nvim",
    init = function() table.insert(astronvim.git_plugins, "diffview.nvim") end,
  },

  --- Languages ---
  -----------------

  { "folke/neodev.nvim" },

  { "sbdchd/neoformat" },

  { "tikhomirov/vim-glsl" },


  ------ fun ------
  -----------------

  {
    "eandrju/cellular-automaton.nvim",
    cmd = "CellularAutomaton",
    config = true,
  },
}
