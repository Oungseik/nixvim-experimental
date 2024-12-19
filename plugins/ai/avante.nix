{
  plugins.dressing.enable = true;
  plugins.copilot-lua.enable = true;

  plugins.avante = {
    enable = true;

    settings = {
      provider = "copilot";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>a";
      action = "<Nop>";
      options = {
        silent = true;
        desc = "+AI";
      };
    }
  ];
}
