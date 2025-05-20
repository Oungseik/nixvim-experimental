{
  plugins.render-markdown = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        ft = [
          "markdown"
          "Avante"
        ];
      };
    };
    settings = {
      enabled = false;
      file_types = ["markdown" "Avante"];
      render_modes = ["n" "c" "t"];
    };
  };
}
