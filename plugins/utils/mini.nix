{
  plugins.mini.enable = true;

  extraConfigLua = ''
    require("mini.align").setup()
    -- require('mini.bufremove').setup()
    require("mini.git").setup()
    require("mini.icons").setup()
    require("mini.pairs").setup()
  '';

  keymaps = [
    {
      mode = "n";
      key = "<Leader>ga";
      action = ":Git add %<cr>";
      options = {
        silent = true;
        desc = "Git Add Buffer";
      };
    }

    {
      mode = "n";
      key = "<Leader>gc";
      action = ":Git commit<cr>";
      options = {
        silent = true;
        desc = "Git Commit";
      };
    }
  ];
}
