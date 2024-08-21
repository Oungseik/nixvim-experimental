{ ... }:
{
  plugins.lspsaga = {
    enable = true;

    beacon.enable = true;

    ui = {
      border = "single"; # One of none, single, double, rounded, solid, shadow
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

    rename = {
      autoSave = false;
      keys = {
        exec = "<CR>";
        quit = [
          "<C-k>"
          "<Esc>"
        ];
        select = "x";
      };
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
    {
      mode = "n";
      key = "<leader>ls";
      action = "<Nop>";
      options = {
        desc = "+LSPsaga";
        silent = true;
      };
    }

    # check out https://nvimdev.github.io/lspsaga/callhierarchy/
    {
      mode = "n";
      key = "<leader>lso";
      action = "<cmd>Lspsaga outgoing_calls<CR>";
      options = {
        desc = "Outgoing Calls";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lsi";
      action = "<cmd>Lspsaga incoming_calls<CR>";
      options = {
        desc = "Incoming Calls";
        silent = true;
      };
    }

  ];
}
