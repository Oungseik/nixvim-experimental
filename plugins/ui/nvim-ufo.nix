{
  plugins.nvim-ufo = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        event = [ "BufEnter" ];
      };
    };
  };
}
