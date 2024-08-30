{ pkgs, helpers, ... }:
{
  plugins.conform-nvim = {
    enable = true;

    settings = {
      format_on_save = {
        timeoutMs = 500;
        lspFallback = true;

      };
      notify_on_error = true;

      formatters = {
        stylua = {
          command = "${pkgs.stylua}/bin/stylua";
        };
        nixfmt = {
          command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
        };
        biome = {
          command = "${pkgs.biome}/bin/biome";
          args = [
            "--trailing-comma=es5"
            "--semicolons=always"
            "--javascript-formatter-enabled=true"
            "--javascript-formatter-indent-style=space"
          ];
        };
        black = {
          command = "${pkgs.black}/bin/black";
        };
      };

      formatters_by_ft = {
        javascript =
          (helpers.listToUnkeyedAttrs [
            "prettierd"
            "prettier"
            "biome"
          ])
          // {
            stopAfterFirst = true;
          };
        typescript =
          (helpers.listToUnkeyedAttrs [
            "prettierd"
            "prettier"
            "biome"
          ])
          // {
            stopAfterFirst = true;
          };
        javascriptreact =
          (helpers.listToUnkeyedAttrs [
            "prettierd"
            "prettier"
            "biome"
          ])
          // {
            stopAfterFirst = true;
          };
        typescriptreact =
          (helpers.listToUnkeyedAttrs [
            "prettierd"
            "prettier"
            "biome"
          ])
          // {
            stopAfterFirst = true;
          };

        go = [ "gofmt" ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        python = [ "black" ];
        rust = [ "rustfmt" ];
      };
    };

  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>lf";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        desc = "Format";
        silent = true;
      };
    }
  ];

}
