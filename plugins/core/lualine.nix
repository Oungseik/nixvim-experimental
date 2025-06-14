{
  plugins.lualine = {
    enable = true;

    lazyLoad = {
      enable = true;
      settings = {
        event = [ "BufRead" ];
      };
    };

    settings = {

      options = {
        globalstatus = true;
        theme = "auto";

        disabled_filetypes = {
          statusline = [
            "startup"
            "alpha"
            "NvimTree"
            "neo-tree"
            "sagaoutline"

            "dapui_scopes"
            "dapui_breakpoints"
            "dapui_stacks"
            "dapui_watches"
            "dap-repl"
            "dapui_console"
          ];
        };

        component_separators = {
          right = "";
          left = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
      };

      extensions = [
        "fzf"
        "neo-tree"
      ];

      sections = {
        lualine_a = [ { __unkeyed-1 = "mode"; } ];
        lualine_b = [
          {
            __unkeyed-1.__raw = ''
              function()
                local buf_clients = vim.lsp.get_clients { bufnr = 0 }
                if #buf_clients == 0 then
                  return "LSP Inactive"
                end

                local buf_ft = vim.bo.filetype
                local buf_client_names = {}

                -- add client
                for _, client in pairs(buf_clients) do
                  if client.name ~= "null-ls" and client.name ~= "copilot" then
                    table.insert(buf_client_names, client.name)
                  end
                end

                local unique_client_names = table.concat(buf_client_names, ", ")
                local language_servers = #buf_client_names > 0 and string.format("  %s", unique_client_names) or "LSP Inactive"

                return language_servers
              end,
            '';
          }
        ];
        lualine_c = [
          { __unkeyed-1 = "navic"; }
          {
            __unkeyed-1.__raw = ''
              function()
                local icon = " "
                local status = require("copilot.api").status.data
                return icon .. (status.message or " ")
              end,

              cond = function()
               local ok, clients = pcall(vim.lsp.get_clients, { name = "copilot", bufnr = 0 })
               return ok and #clients > 0
              end,
              color = { fg = "#a6da95" },
            '';
          }
          {
            __unkeyed-1 = "diagnostics";
            sources = [ "nvim_lsp" ];
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          }
        ];

        # right
        lualine_x = [
          {
            __unkeyed-1 = "diff";
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
          }
        ];

        lualine_y = [
          {
            __unkeyed-1 = "branch";
            icon = "";
          }
        ];
        lualine_z = [ { __unkeyed-1 = "location"; } ];
      };
    };
  };
}
