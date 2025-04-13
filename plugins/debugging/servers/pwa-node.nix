{
  # TODO - this is not configure correctly
  host = "localhost";
  port = "\${port}";
  executable = {
    command = "node";
    args = [
      "/home/oung/.config/js-debug/src/dapDebugServer.js"
      "\${port}"
    ];
  };
}
