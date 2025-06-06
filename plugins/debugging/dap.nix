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

      adapters.executables = {
        gdb = import ./servers/gdb.nix;
      };

      configurations = {
        javascript = import ./configurations/javascript.nix;
        typescript = import ./configurations/typescript.nix;
        rust = import ./configurations/rust.nix;
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
          text = "";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "";
          texthl = "DapLogPoint";
        };
        dapBreakpointRejected = {
          text = "◆";
          texthl = "DapLogPointRejected";
        };
        dapStopped = {
          text = "";
          texthl = "DapStopped";
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
