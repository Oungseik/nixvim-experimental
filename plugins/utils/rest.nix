{
  plugins.rest = {
    enable = true;
    settings = {
      keybinds = [
        [
          "<leader>rr"
          "<cmd>Rest run<cr>"
          "Run req under cursor"
        ]
        [
          "<leader>rl"
          "<cmd>Rest run<cr>"
          "Re-run last req"
        ]
      ];

      env_file = ".rest.env";
      skip_ssl_verification = true;
    };
  };
}
