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
]
