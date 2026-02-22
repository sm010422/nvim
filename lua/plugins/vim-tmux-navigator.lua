return {
  {
    -- [vim-tmux-navigator]
    -- Allows seamless navigation between Neovim splits and Tmux panes using Ctrl + hjkl.
    -- 
    -- 💡 Keybinding Conflict Issue (Terminal Clear Screen)
    -- The default terminal 'clear' function won't work because <C-l> is overridden by 'Navigate Right'.
    -- To use the clear screen feature, you need to add the following setting to Tmux:
    -- 1. Add `bind C-l send-keys 'C-l'` to your ~/.tmux.conf
    -- 2. To clear the terminal afterwards, press [Tmux Prefix] -> then [Ctrl + l]
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  }
}
