{ pkgs, ... }:
{
  plugins.lint = {
    enable = false;

    linters = {
      golangcilint = {
        cmd = "${pkgs.golangci-lint}/bin/golangci-lint";
      };
    };

    lintersByFt = {
      # javascript = [ "biomejs" ];
      # typescript = [ "biomejs" ];
      # javascriptreact = [ "biomejs" ];
      # typescriptreact = [ "biomejs" ];
      go = [ "golangcilint" ];
      # rust = [ "clippy" ]; # no need to enable this, rustaceanvim already have
    };
  };
}
