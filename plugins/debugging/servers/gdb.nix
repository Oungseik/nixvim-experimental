{
  command = "rust-gdb";
  args = [
    "--interpreter=dap"
    "--eval-command"
    "set print pretty on"
  ];
}
