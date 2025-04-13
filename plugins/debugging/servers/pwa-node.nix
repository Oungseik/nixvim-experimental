{
  # TODO - this is not configure correctly
  host = "localhost";
  port = "\${port}";
  executable = {
    command = "bun";
    args = [
      "$JAVASCRIPT_DAP_DEBUG_SERVER"
      "\${port}"
    ];
  };
}
