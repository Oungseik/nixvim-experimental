{
  plugins.crates = {
    enable = false;

    lazyLoad = {
      settings = {
        event = [ "BufRead Cargo.toml" ];
      };
    };
  };

}
