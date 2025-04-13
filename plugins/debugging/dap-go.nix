{
  plugins.dap-go = {
    enable = true;
    lazyLoad = {
      enable = false;
      settings = {
        ft = [ "go" ];
      };
    };
  };
}
