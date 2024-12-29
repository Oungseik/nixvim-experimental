{
  plugins.lz-n = {
    enable = true;

    plugins = [
      {
        __unkeyed-1 = "crates.nvim";
        ft = "toml";
      }
      {
        __unkeyed-1 = "hurl.nvim";
        ft = "hurl";
        cmd = [
          "HurlRunner"
          "HurlRunnerAt"
          "HurlRunnerToEnd"
          "HurlRunnerToEntry"
        ];
      }
    ];
  };
}
