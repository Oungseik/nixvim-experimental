{ ... }:
{
  plugins = {
    dap-ui.enable = true;
    dap-virtual-text.enable = true;

    dap = {
      enable = true;

      adapters.servers = {
        pwa-node = import ./servers/pwa-node.nix;
      };

      configurations = {
        javascript = [
          (import ./configurations/javascript.nix)
        ];
        typescript = [
          (import ./configurations/typescript.nix)
        ];
      };

      lazyLoad = {
        enable = true;
        settings = {
          ft = [
            "go"
            "javascript"
            "javascriptreact"
            "rust"
            "typescript"
            "typescriptreact"
          ];
        };
      };

      signs = {
        dapBreakpoint = {
          text = "";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "◆";
          texthl = "DapLogPoint";
        };
        dapBreakpointRejected = {
          text = "";
        };
      };
    };
  };

  keymaps = import ./keymaps.nix;

  extraConfigLuaPost = ''
    local dap, dapui = require("dap"), require("dapui")

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  '';
}
