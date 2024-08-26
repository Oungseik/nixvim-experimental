{ pkgs, ... }:
{
  plugins.lint = {
    enable = true;

    linters = {
      golangcilint = {
        cmd = "${pkgs.golangci-lint}/bin/golangci-lint";
      };
    };

    lintersByFt = {
      javascript = [ "biomejs" ];
      typescript = [ "biomejs" ];
      javascriptreact = [ "biomejs" ];
      typescriptreact = [ "biomejs" ];
      json = [ "jsonlint" ];
      go = [ "golangcilint" ];
      # rust = [ "clippy" ]; # no need to enable this, rustaceanvim already have
    };
  };
}