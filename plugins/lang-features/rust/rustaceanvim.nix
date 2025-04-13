{
  plugins.rustaceanvim = {
    enable = true;

    lazyLoad = {
      enable = true;
      settings = {
        ft = "rust";
      };
    };

    settings = {
      server = {
        cmd = [
          "rustup"
          "run"
          "stable"
          "rust-analyzer"
        ];
        default_settings = {
          rust-analyzer = {
            check = {
              command = "clippy";
            };
            inlayHints = {
              bindingModeHints.enable = true;
              closureStyle = "rust_analyzer";
              closureReturnTypeHints.enable = "always";
              discriminantHints.enable = "always";
              expressionAdjustmentHints.enable = "always";
              implicitDrops.enable = true;
              lifetimeElisionHints.enable = "skip_trivial";
              rangeExclusiveHints.enable = true;
            };

            procMacro = {
              enable = true;
              ignored = {
                leptos_macro = [
                  "component"
                  "server"
                ];
              };
            };
          };
        };
        standalone = false;
      };

      # TODO - setup the dap for rust
    };
  };
}
