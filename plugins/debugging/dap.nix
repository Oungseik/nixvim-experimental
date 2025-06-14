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
        gdb-rust = import ./servers/gdb-rust.nix;
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

    dapui.setup({
      controls = {
        element = "repl",
        enabled = true,
        icons = {
          disconnect = "",
          pause = "",
          play = "",
          run_last = "",
          step_back = "",
          step_into = "",
          step_out = "",
          step_over = "",
          terminate = "",
        },
      },
      element_mappings = {},
      expand_lines = true,
      floating = {
        max_height = 34,
        max_width = 240,
        border = "single",
        mappings = {
          close = { "q", "<Esc>" },
        },
      },
      force_buffers = true,
      icons = {
        collapsed = "",
        current_frame = "",
        expanded = "",
      },
      layouts = {
        {
          elements = {
            {
              id = "scopes",
              size = 0.25,
            },
            {
              id = "breakpoints",
              size = 0.25,
            },
            {
              id = "stacks",
              size = 0.25,
            },
            {
              id = "watches",
              size = 0.25,
            },
          },
          position = "right",
          size = 80,
        },
        {
          elements = {
            {
              id = "console",
              size = 0.5,
            },
            {
              id = "repl",
              size = 0.5,
            },
          },
          position = "bottom",
          size = 10,
        },
      },
      mappings = {
        edit = "e",
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        repl = "r",
        toggle = "t",
      },
      render = {
        indent = 1,
        max_value_lines = 100,
      },
    })

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
