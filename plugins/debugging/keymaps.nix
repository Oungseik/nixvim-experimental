[
  {
    mode = "n";
    key = "<leader>d";
    action = "<Nop>";
    options = {
      silent = true;
      desc = "Debugger";
    };
  }
  {
    mode = "n";
    key = "<leader>dB";
    action = "
        <cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>
      ";
    options = {
      silent = true;
      desc = "Breakpoint Condition";
    };
  }
  {
    mode = "n";
    key = "<leader>db";
    action = ":DapToggleBreakpoint<cr>";
    options = {
      silent = true;
      desc = "Toggle Breakpoint";
    };
  }
  {
    mode = "n";
    key = "<leader>dc";
    action = ":DapContinue<cr>";
    options = {
      silent = true;
      desc = "Continue";
    };
  }
  {
    mode = "n";
    key = "<leader>dC";
    action = ":lua require('dap').clear_breakpoints()<cr>";
    options = {
      silent = true;
      desc = "Clear All Breakpoint";
    };
  }
  {
    mode = "n";
    key = "<leader>d8";
    action = ":lua require('dap').step_over()<cr>";
    options = {
      silent = true;
      desc = "Step Over";
    };
  }
  {
    mode = "n";
    key = "<leader>d9";
    action = ":lua require('dap').step_into()<cr>";
    options = {
      silent = true;
      desc = "Step Into";
    };
  }
  {
    mode = "n";
    key = "<leader>d0";
    action = ":lua require('dap').step_out()<cr>";
    options = {
      silent = true;
      desc = "Step Out";
    };
  }
  {
    mode = "n";
    key = "<leader>dt";
    action = ":lua require('dap').terminate()<cr>";
    options = {
      silent = true;
      desc = "Terminate";
    };
  }

  # Dap UI keymaps
  {
    mode = "n";
    key = "<leader>du";
    action = ":lua require('dapui').toggle()<cr>";
    options = {
      silent = true;
      desc = "Toggle Dap UI";
    };
  }
  {
    mode = "n";
    key = "<leader>dl";
    action = ":lua require('dapui').float_element('scopes', { enter = true })<cr>";
    options = {
      silent = true;
      desc = "Locals Float Window";
    };
  }
  {
    mode = "n";
    key = "<leader>de";
    action = ":lua require('dapui').float_element('watches', { enter = true })<cr>";
    options = {
      silent = true;
      desc = "Expressions Float Window";
    };
  }
  {
    mode = "n";
    key = "<leader>dL";
    action = ":lua require('dapui').float_element('breakpoints', { enter = true })<cr>";
    options = {
      silent = true;
      desc = "Breakpoints Float Window";
    };
  }
  {
    mode = "n";
    key = "<leader>ds";
    action = ":lua require('dapui').float_element('stacks', { enter = true })<cr>";
    options = {
      silent = true;
      desc = "Stacks Float Window";
    };
  }
]
