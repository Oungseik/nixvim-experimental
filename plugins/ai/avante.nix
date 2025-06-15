{ pkgs, ... }:
{
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
      provider = "gemini";

      providers = {
        gemini = {
          endpoint = "https://generativelanguage.googleapis.com/v1beta/models";
          api_key_name = "GEMINI_API_KEY";
          model = "gemini-2.5-flash-preview-05-20";
          timeout = 30000;
          temperature = 0;
          max_tokens = 8192;
        };
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
