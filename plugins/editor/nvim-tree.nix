{
  plugins.nvim-tree = {
    enable = true;
    updateFocusedFile = {
      enable = true;
      ignoreList = [ "node_modules" ];
    };

    view = {
      # side = "right";

      # comment this if you doesn't want floating explorer
      float = {
        enable = true;
        openWinConfig.__raw = ''
          function()
                  local HEIGHT_RATIO = 0.8 -- You can change this
                  local WIDTH_RATIO = 0.5 
                  local screen_w = vim.opt.columns:get()
                  local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                  local window_w = screen_w * WIDTH_RATIO
                  local window_h = screen_h * HEIGHT_RATIO
                  local window_w_int = math.floor(window_w)
                  local window_h_int = math.floor(window_h)
                  local center_x = (screen_w - window_w) / 2
                  local center_y = ((vim.opt.lines:get() - window_h) / 2)
                                   - vim.opt.cmdheight:get()
                  return {
                    border = "rounded",
                    relative = "editor",
                    row = center_y,
                    col = center_x,
                    width = window_w_int,
                    height = window_h_int,
                  }
                  end,
        '';
      };
    };

    git = {
      enable = true;
    };

    actions.expandAll.exclude = [ ];

    renderer = {
      highlightGit = true;
      highlightOpenedFiles = "none";
      indentMarkers = {
        enable = true;
      };

      icons = {
        gitPlacement = "after";
        show = {
          file = true;
          folder = true;
          folderArrow = true;
          git = false;
        };

        glyphs = {
          # git = {
          #   unstaged = "${icons.git.FileUnstaged}";
          #   staged = "${icons.git.FileStaged}";
          #   unmerged = "${icons.git.FileUnmerged}";
          #   renamed = "${icons.git.FileRenamed}";
          #   untracked = "${icons.ui.lazy.not_loaded}";
          #   deleted = "${icons.git.FileDeleted}";
          #   ignored = "${icons.git.FileIgnored}";
          # };
        };
      };
    };

    diagnostics = {
      enable = true;
      showOnDirs = true;
      showOnOpenDirs = false;
      debounceDelay = 50;
      severity = {
        min = "error";
        max = "error";
      };
    };
  };

  globals = {
    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      options.silent = true;
      options.desc = "Explorer";
      action = "<cmd>NvimTreeToggle<CR>";
    }
  ];
}
