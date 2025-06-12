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

  diagnostic.settings = {
    virtual_lines = false;
    virtual_text = true;
  };

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
        nil_ls.enable = true;
        pyright.enable = true;
        svelte.enable = true;
        taplo.enable = true;
        cssls.enable = true;
        astro.enable = true;

        denols = {
          enable = false;
          rootMarkers = [
            "deno.jsono"
            "deno.jsonc"
          ];
          extraOptions = {
            single_file_support = false;
          };
        };

        ts_ls = {
          enable = true;
          rootMarkers = [
            "package.json"
          ];
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
    {
      mode = "n";
      key = "<leader>la";
      action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
      options = {
        desc = "Code Action";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>li";
      action = "<cmd>lua vim.lsp.buf.implementation()<cr>";
      options = {
        desc = "Implementation";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover({ border = 'rounded' })<cr>";
      options = {
        desc = "Hover";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lr";
      action = "<cmd>lua vim.lsp.buf.rename()<cr>";
      options = {
        desc = "Rename";
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>lq";
      action = ":lua vim.diagnostic.setloclist()<cr>";
      options = {
        silent = true;
        desc = "Quickfix";
      };
    }
  ];
}
