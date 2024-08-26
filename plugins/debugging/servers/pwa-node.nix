{ ... }:
{
  # TODO - this is not configure correctly 
  host = "localhost";
  port = "\${port}";
  executable = {
    command = "node";
    args = [
      ""
      "\${port}"
    ];
  };
}
