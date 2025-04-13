{
  type = "pwa-node";
  request = "launch";
  name = "launch file";
  runtimeExecutable = "bun";
  runtimeArgs = [
    "--inspect-wait"
  ];
  program = "\${file}";
  cwd = "\${workspaceFolder}";
  attachSimplePort = 9229;
}
