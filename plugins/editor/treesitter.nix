{
  plugins = {
    treesitter = {
      enable = true;

      lazyLoad = {
        enable = true;
        settings = {
          cmd = [ "BufAdd" ];
        };
      };
      nixvimInjections = true;
      folding = false;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        ensure_installed = [ "comment" ];
        parser_install_dir = "$HOME/.local/share/treesitter";
      };
    };

    treesitter-refactor = {
      enable = false;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    };

    hmts.enable = true;
  };
}
