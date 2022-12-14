local config = {
  header = {
    "         /\\    \\                  /\\    \\                  /\\    \\         ",
    "        /::\\    \\                /::\\    \\                /::\\    \\        ",
    "       /::::\\    \\              /::::\\    \\              /::::\\    \\       ",
    "      /::::::\\    \\            /::::::\\    \\            /::::::\\    \\      ",
    "     /:::/\\:::\\    \\          /:::/\\:::\\    \\          /:::/\\:::\\    \\     ",
    "    /:::/  \\:::\\    \\        /:::/__\\:::\\    \\        /:::/  \\:::\\    \\    ",
    "   /:::/    \\:::\\    \\       \\:::\\   \\:::\\    \\      /:::/    \\:::\\    \\   ",
    "  /:::/    / \\:::\\    \\    ___\\:::\\   \\:::\\    \\    /:::/    / \\:::\\    \\  ",
    " /:::/    /   \\:::\\ ___\\  /\\   \\:::\\   \\:::\\    \\  /:::/    /   \\:::\\ ___\\ ",
    "/:::/____/  ___\\:::|    |/::\\   \\:::\\   \\:::\\____\\/:::/____/     \\:::|    |",
    "\\:::\\    \\ /\\  /:::|____|\\:::\\   \\:::\\   \\::/    /\\:::\\    \\     /:::|____|",
    " \\:::\\    /::\\ \\::/    /  \\:::\\   \\:::\\   \\/____/  \\:::\\    \\   /:::/    / ",
    "  \\:::\\   \\:::\\ \\/____/    \\:::\\   \\:::\\    \\       \\:::\\    \\ /:::/    /  ",
    "   \\:::\\   \\:::\\____\\       \\:::\\   \\:::\\____\\       \\:::\\    /:::/    /   ",
    "    \\:::\\  /:::/    /        \\:::\\  /:::/    /        \\:::\\  /:::/    /    ",
    "     \\:::\\/:::/    /          \\:::\\/:::/    /          \\:::\\/:::/    /     ",
    "      \\::::::/    /            \\::::::/    /            \\::::::/    /      ",
    "       \\::::/    /              \\::::/    /              \\::::/    /       ",
    "        \\::/____/                \\::/    /                \\::/____/        ",
    "                                  \\/____/                  ~~              "
  },

  lsp = {
    servers = {
      "sorbet"
    }
  },

  plugins = {
    init = {
      {
        "ggandor/leap.nvim",
        keys = { "s", "S" },
        config = function()
          local leap = require "leap"
          leap.set_default_keymaps()
        end,
      },
      { "vim-test/vim-test" },
      { "christoomey/vim-tmux-navigator" },
      { "tpope/vim-surround" }
    }
  },

  mappings = {
    n = {
      ["<leader>Tn"] = { "<cmd>TestNearest<cr>", desc = "Run test under the current cursor line" },
      ["<leader>Tf"] = { "<cmd>TestFile<cr>", desc = "Run test for the current file" },
      ["<leader>Tl"] = { "<cmd>TestLast<cr>", desc = "Run the previously ran test" },
      ["<leader>Tv"] = { "<cmd>TestVisit<cr>", desc = "Go to the matching test" },
    }
  }
}

return config
