[
  {
    type = "pwa-node";
    request = "launch";
    name = "launch program";
    runtimeExecutable = "deno";
    runtimeArgs = [
      "run"
      "--inspect-wait"
      "--allow-all"
    ];
    program = "\${file}";
    cwd = "\${workspaceFolder}";
    attachSimplePort = 9229;
  }
]
