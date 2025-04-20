{
  extraConfigLuaPre = ''
    vim.diagnostic.config({
      signs = { 
        text = { 
          [vim.diagnostic.severity.ERROR] = "", 
          [vim.diagnostic.severity.WARN] = "" ,
          [vim.diagnostic.severity.HINT] = "󰌵", 
          [vim.diagnostic.severity.INFO] = "", 
        }, 
      },
    })
  '';

  diagnostics.virtual_lines = false;
  diagnostics.virtual_text = true;

  plugins = {
    lsp-lines.enable = true;
    lsp-format = {
      enable = true;
      lspServersToEnable = [
        "clangd"
        "elixirls"
        "gleam"
        "gopls"
        "lua_ls"
        "marksman"
        "nil_ls"
        "taplo"
      ];
    };
    lspkind.enable = true;

    lsp = {
      enable = true;

      lazyLoad = {
        enable = true;
        settings = {
          event = [ "BufAdd" ];
        };
      };

      servers = {

        clangd.enable = true;
        elixirls.enable = true;
        elmls.enable = true;
        gopls.enable = true;
        gleam.enable = true;
        hls = {
          enable = true;
          installGhc = false;
        };
        jsonls.enable = true;
        marksman.enable = true;
        nil_ls.enable = true;
        pyright.enable = true;
        svelte.enable = true;
        taplo.enable = true;
        cssls.enable = true;
        astro.enable = true;

        denols = {
          enable = true;
          rootDir.__raw = ''require("lspconfig").util.root_pattern("deno.json", "deno.jsonc")'';
        };

        ts_ls = {
          enable = true;
          rootDir.__raw = ''require("lspconfig").util.root_pattern("package.json")'';
          extraOptions = {
            single_file_support = false;
          };
        };

        lua_ls = {
          enable = true;
          settings.diagnostic.globals = [ "vim" ];
        };

      };

      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          "<leader>lr" = {
            action = "rename";
            desc = "Rename";
          };
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>l";
      action = "<Nop>";
      options = {
        desc = "+LSP";
        silent = true;
      };
    }
  ];

}
