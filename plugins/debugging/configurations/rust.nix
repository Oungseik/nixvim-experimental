[
  {
    name = "Launch";
    type = "gdb-rust";
    request = "launch";
    program.__raw = ''
      function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end
    '';
    # -- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
    cwd = "\${workspaceFolder}";
    stopAtBeginningOfMainSubprogram = false;
  }
  {
    name = "Select and attach to process";
    type = "gdb-rust";
    request = "attach";
    program = ''
      function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end
    '';
    pid = ''
      function()
        local name = vim.fn.input("Executable name (filter): ")
        return require("dap.utils").pick_process({ filter = name })
      end
    '';
    cwd = "\${workspaceFolder}";
  }
  # {
  #   name = "Attach to gdbserver :1234";
  #   type = "gdb";
  #   request = "attach";
  #   target = "localhost:1234";
  #   program = ''
  #     function()
  #       return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
  #     end
  #   '';
  #   cwd = "\${workspaceFolder}";
  # }
]
