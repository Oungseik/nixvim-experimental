{
  plugins.blink-cmp = {
    enable = true;

    # lazy loading for this plugin does not work
    lazyLoad = {
      enable = false;

      settings = {
        event = [ "BufEnter" ];
      };
    };

    settings = {

      completion = {
        accept = {
          auto_brackets = {
            enabled = true;
            semantic_token_resolution = {
              enabled = false;
            };
          };
        };
        documentation = {
          auto_show = false;
          auto_show_delay_ms = 500;
          treesitter_highlighting = true;
        };
        ghost_text = {
          enabled = false;
        };
        # list.selection.preselect = true;
      };

      cmdline = {
        completion = {
          menu = {
            auto_show = true;
          };
        };
      };

      sources = { };

      signature = {
        enabled = true;
      };

      keymap = {
        "<C-j>" = [
          "select_next"
          "fallback"
        ];
        "<C-k>" = [
          "select_prev"
          "fallback"
        ];
        # "<CR>" = [
        #   "accept"
        #   "fallback"
        # ];
      };
    };
  };
}
