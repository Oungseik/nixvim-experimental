{
  plugins.hurl = {
    enable = true;

    lazyLoad = {
      # lazy-loading does not work at all
      enable = false;
      settings = {
        ft = [ "hurl" ];
      };
    };

    settings = {
      split_size = "50%";
      auto_close = false;
      env_file = [
        ".env"
        "hurl.env"
      ];
    };
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
      key = "<leader>rs";
      options.silent = true;
      options.desc = "Show Last Hurl";
      action = "<cmd>HurlShowLastResponse<CR>";
    }
    {
      mode = "n";
      key = "<leader>rr";
      options.silent = true;
      options.desc = "Run Hurl";
      action = "<cmd>HurlRunnerAt<CR>";
    }
    {
      mode = "n";
      key = "<leader>ra";
      options.silent = true;
      options.desc = "Run Hurl File";
      action = "<cmd>HurlRunner<CR>";
    }
    {
      mode = "v";
      key = "<leader>rr";
      options.silent = true;
      options.desc = "Run Hurl";
      action = ":HurlRunner<CR>";
    }
    {
      mode = "n";
      key = "<leader>rt";
      options.silent = true;
      options.desc = "Run Hurl File";
      action = "<cmd>HurlRunnerToEntry<CR>";
    }
    {
      mode = "n";
      key = "<leader>re";
      options.silent = true;
      options.desc = "Run Hurl File";
      action = "<cmd>HurlRunnerToEnd<CR>";
    }
  ];
}
