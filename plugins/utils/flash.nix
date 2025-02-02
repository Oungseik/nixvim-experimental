{
  plugins.flash = {
    enable = false;

    lazyLoad = {
      enable = true;
      settings = {
        keys = [
          {
            __unkeyed-1 = "s";
          }
        ];
      };
    };

    settings = {
      labels = "asdfghjklqwertyuiopzxcvbnm";
      label = {
        uppercase = false;
        rainbow = {
          enabled = true;
          shade = 5;
        };
      };

      search = {
        mode = "fuzzy";
      };
      jump = {
        autojump = true;
      };
    };
  };
  keymaps = [
    {
      mode = [
        "n"
        "x"
        "o"
      ];
      key = "s";
      action = "<cmd>lua require('flash').jump()<cr>";
      options = {
        desc = "Flash";
      };
    }
  ];
}
