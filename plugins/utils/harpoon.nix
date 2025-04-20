{
  plugins.harpoon = {
    enable = true;
    lazyLoad = {
      enable = false;
      settings = {
        event = [ "VimEnter" ];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>m";
      action = "<Nop>";
      options = {
        desc = "Harpoon";
      };
    }
    {
      mode = "n";
      key = "<leader>ma";
      action = "<cmd>lua require'harpoon':list():add()<cr>";
      options = {
        desc = "Add List";
      };
    }
    {
      mode = "n";
      key = "<leader>mm";
      action = "<cmd>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<cr>";
      options = {
        desc = "Show List";
      };
    }
  ];
}
