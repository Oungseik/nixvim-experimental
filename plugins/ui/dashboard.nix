{
  plugins.dashboard = {
    enable = true;

    settings = {
      shortcut_type = "number";
      config = {
        header = [
          ""
          " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗"
          " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║"
          " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║"
          " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║"
          " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║"
          " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝"
          ""
        ];

        project.limit = 10;
        mru.limit = 6;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>;";
      action = "<cmd>Dashboard<cr>";
      options = {
        silent = true;
        desc = "Dashboard";
      };
    }
  ];
}
