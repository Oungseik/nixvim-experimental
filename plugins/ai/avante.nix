{ pkgs, ... }:
{
  plugins.dressing = {
    enable = false;
    lazyLoad = {
      enable = true;
      settings = {
        event = [ "BufRead" ];
      };
    };
  };
  plugins.copilot-lua = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        event = [ "BufRead" ];
      };
    };
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

      gemini = {
        endpoint = "https://generativelanguage.googleapis.com/v1beta/models";
        api_key_name = "GEMINI_API_KEY";
        model = "gemini-2.5-pro-exp-03-25";
        timeout = 30000;
        temperature = 0;
        max_tokens = 8192;
      };

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
