{ pkgs, helpers, ... }: {
  plugins.conform-nvim = {
    enable = true;
    notifyOnError = true;

    formatters = {
      stylua = {
        command = "${pkgs.stylua}/bin/stylua";
      };
      nixfmt = {
        command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
      };
      biome = {
        command = "${pkgs.biome}/bin/biome";
      };
      black = {
        command = "${pkgs.black}/bin/black";
      };
    };

    formattersByFt = {
      javascript = (helpers.listToUnkeyedAttrs [ "prettierd" "prettier" "biome" ]) // { stopAfterFirst = true; };
      typescript = (helpers.listToUnkeyedAttrs [ "prettierd" "prettier" "biome" ]) // { stopAfterFirst = true; };
      javascriptreact = (helpers.listToUnkeyedAttrs [ "prettierd" "prettier" "biome" ]) // { stopAfterFirst = true; };
      typescriptreact = (helpers.listToUnkeyedAttrs [ "prettierd" "prettier" "biome" ]) // { stopAfterFirst = true; };

      nix = [ "nixfmt" ];
      rust = [ "rustfmt" ];
      lua = [ "stylua" ];
      python = [ "black" ];
      go = [ "gofmt" ];
    };

    formatOnSave = {
      timeoutMs = 500;
      lspFallback = true;
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
