{

  extraConfigLuaPre = ''
    vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
    vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn", linehl = "", numhl = "" })
    vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint", linehl = "", numhl = "" })
    vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo", linehl = "", numhl = "" })
  '';

  diagnostics.virtual_lines = false;
  diagnostics.virtual_text = true;

  plugins = {
    lsp-lines.enable = true;
    lsp-format.enable = true;
    lspkind.enable = true;

    lsp = {
      enable = true;

      servers = {

        clangd.enable = true;
        # cssls.enable = true;
        elixirls.enable = true;
        elmls.enable = true;
        gopls.enable = true;
        gleam.enable = true;
        hls = {
          enable = true;
          installGhc = true;
        };
        jsonls.enable = true;
        marksman.enable = true;
        nil_ls.enable = true;
        pyright.enable = true;
        svelte.enable = true;

        # html.enable = true;
        # cssls.enable = true;
        # emmet_ls.enable = true;

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
