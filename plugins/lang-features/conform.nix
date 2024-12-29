{ pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        event = ["InsertEnter"];
      };
    };

    settings = {
      # format_on_save = {
      #   timeoutMs = 500;
      #   lspFallback = true;
      # };

      notify_on_error = true;

      formatters = {
        stylua = {
          command = "${pkgs.stylua}/bin/stylua";
        };
        nixfmt = {
          command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
        };
        black = {
          command = "${pkgs.black}/bin/black";
        };
      };

      formatters_by_ft = {
        javascript = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          __unkeyed-3 = "deno_fmt";
          timeout_ms = 2000;
          stop_after_first = true;
        };
        typescript = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          __unkeyed-3 = "deno_fmt";
          timeout_ms = 2000;
          stop_after_first = true;
        };
        javascriptreact = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          __unkeyed-3 = "deno_fmt";
          timeout_ms = 2000;
          stop_after_first = true;
        };

        typescriptreact = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          __unkeyed-3 = "deno_fmt";
          timeout_ms = 2000;
          stop_after_first = true;
        };

        json = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          __unkeyed-3 = "deno_fmt";
          timeout_ms = 2000;
          stop_after_first = true;
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
