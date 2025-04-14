{ pkgs, ... }:
{
  plugins.dressing = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        event = [ "BufRead" ];
      };
    };
  };
  plugins.copilot-lua = {
    enable = true;
    settings = {
      copilot_node_command = "${pkgs.nodejs_22}/bin/node";
    };
  };

  plugins.avante = {
    enable = true;

    lazyLoad = {
      enable = true;
      settings = {
        event = [ "BufEnter" ];
      };
    };

    settings = {
      provider = "copilot";

      hints = {
        enable = false;
      };

      behaviour = {
        auto_suggestions = false;
      };

      windows = {
        width = 40;
      };

    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>a";
      action = "<Nop>";
      options = {
        silent = true;
        desc = "+AI";
      };
    }
  ];
}
