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

        mru.limit = 10;
        project.limit = 10;
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
