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
    key = "<leader>dl";
    action = ":lua require('dap').list_breakpoints()<cr>";
    options = {
      silent = true;
      desc = "List All Breakpoint";
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
    action = "<Nop>";
    options = {
      silent = true;
      desc = "Dap UI";
    };
  }
  {
    mode = "n";
    key = "<leader>duo";
    action = ":lua require('dapui').toggle()<cr>";
    options = {
      silent = true;
      desc = "Open Dap UI";
    };
  }
  {
    mode = "n";
    key = "<leader>duc";
    action = ":lua require('dapui').close()<cr>";
    options = {
      silent = true;
      desc = "Close Dap UI";
    };
  }
  {
    mode = "n";
    key = "<leader>do";
    action = "<Nop>";
    options = {
      silent = true;
      desc = "Open Float Window";
    };
  }
  {
    mode = "n";
    key = "<leader>dol";
    action = ":lua require('dapui').float_element('scopes', { enter = true })<cr>";
    options = {
      silent = true;
      desc = "Open Locals Float Window";
    };
  }
  {
    mode = "n";
    key = "<leader>doe";
    action = ":lua require('dapui').float_element('watches', { enter = true })<cr>";
    options = {
      silent = true;
      desc = "Open Expressions Float Window";
    };
  }
  {
    mode = "n";
    key = "<leader>dob";
    action = ":lua require('dapui').float_element('breakpoints', { enter = true })<cr>";
    options = {
      silent = true;
      desc = "Open Breakpoints Float Window";
    };
  }
  {
    mode = "n";
    key = "<leader>dos";
    action = ":lua require('dapui').float_element('stacks', { enter = true })<cr>";
    options = {
      silent = true;
      desc = "Open Stacks Float Window";
    };
  }
]
