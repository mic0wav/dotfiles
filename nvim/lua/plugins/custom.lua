return {
  {
    "mic0wav/hillside",
    lazy = false,
    priority = 1000,

    config = function()
      vim.cmd([[colo hillside]])
    end,
  },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
 _______             ____   ____.__         
 \      \   ____  ___\   \ /   /|__| _____  
 /   |   \_/ __ \/  _ \   Y   / |  |/     \ 
/    |    \  ___(  <_> )     /  |  |  Y Y  \
\____|__  /\___  >____/ \___/   |__|__|_|  /
        \/     \/                        \/ 
        ]],

          -- stylua: ignore
          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "emmylua_ls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = false,
        emmylua_ls = {
          settings = {
            emmylua = {
              runtime = { version = "LuaJIT" },
              diagnostics = { globals = { "vim" } },
              workspace = { library = { vim.env.VIMRUNTIME } },
            },
          },
        },
      },
    },
  },
}
