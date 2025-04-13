{
  plugins.lspsaga = {
    enable = true;

    beacon.enable = true;

    ui = {
      border = "rounded"; # One of none, single, double, rounded, solid, shadow
      codeAction = "💡"; # Can be any symbol you want 💡
    };

    hover = {
      # openCmd = "!floorp"; # Choose your browser
      openLink = "gx";
    };

    diagnostic = {
      borderFollow = true;
      diagnosticOnlyCurrent = false;
      showCodeAction = true;
    };

    symbolInWinbar = {
      enable = true; # Breadcrumbs
    };

    codeAction = {
      extendGitSigns = false;
      showServerName = true;
      onlyInCursor = true;
      numShortcut = true;
      keys = {
        exec = "<CR>";
        quit = [
          "<Esc>"
          "q"
        ];
      };
    };

    lightbulb = {
      enable = false;
      sign = false;
      virtualText = true;
    };

    implement = {
      enable = true;
    };

    outline = {
      autoClose = true;
      autoPreview = true;
      closeAfterJump = true;
      layout = "normal"; # normal or float
      winPosition = "right"; # left or right
      keys = {
        jump = "e";
        quit = "q";
        toggleOrJump = "o";
      };
    };

    scrollPreview = {
      scrollDown = "<C-f>";
      scrollUp = "<C-b>";
    };

  };

  keymaps = [
    # check out https://nvimdev.github.io/lspsaga/callhierarchy/
    {
      mode = "n";
      key = "<leader>l>";
      action = "<cmd>Lspsaga outgoing_calls<CR>";
      options = {
        desc = "Outgoing Calls";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>l<";
      action = "<cmd>Lspsaga incoming_calls<CR>";
      options = {
        desc = "Incoming Calls";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lR";
      action = "<cmd>Lspsaga finder ref<CR>";
      options = {
        desc = "Find References";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>Lspsaga finder def<CR>";
      options = {
        desc = "Find Definition";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>li";
      action = "<cmd>Lspsaga finder imp<CR>";
      options = {
        desc = "Find Implementation";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lt";
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      options = {
        desc = "Find Type Definition";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "K";
      action = "<cmd>Lspsaga hover_doc<CR>";
      options = {
        desc = "Hover";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lo";
      action = "<cmd>Lspsaga outline<CR>";
      options = {
        desc = "Outline";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        desc = "Rename";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>la";
      action = "<cmd>Lspsaga code_action<CR>";
      options = {
        desc = "Code Action";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
      options = {
        desc = "Line Diagnostics";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>l[";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options = {
        desc = "Next Diagnostic";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>l]";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      options = {
        desc = "Previous Diagnostic";
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>lq";
      action = ":lua vim.diagnostic.setloclist()<cr>";
      options = {
        silent = true;
        desc = "Quickfix";
      };
    }
  ];
}
