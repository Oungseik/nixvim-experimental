{
  plugins.dressing.enable = true;
  plugins.copilot-lua.enable = true;

  plugins.avante = {
    enable = true;

    settings = {
      provider = "copilot";

      hints = {
        enable = false;
      };

      behaviour = {
        auto_suggestions = false;
      };

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
