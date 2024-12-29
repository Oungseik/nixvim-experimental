{
  plugins.comment = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        keys = [
          {
            __unkeyed-1 = "<leader>/";
            mode = "n";
          }
          {
            __unkeyed-1 = "<leader>/";
            mode = "v";
          }
        ];
      };
    };

    settings.toggler.line = "<leader>/";
    settings.opleader.line = "<leader>/";
  };
}
