{
  plugins.rest = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>r";
      action = "<Nop>";
      options = {
        silent = true;
        desc = "+REST";
      };
    }
    {
      mode = "n";
      key = "<Leader>rr";
      action = "<cmd>Rest run<cr>";
      options = {
        silent = true;
        desc = "Run Req Under Cursor";
      };
    }
    {
      mode = "n";
      key = "<Leader>rs";
      action = "<cmd>Rest env set .env<cr>";
      options = {
        silent = true;
        desc = "Set .env for REST.nvim";
      };
    }
  ];
}
