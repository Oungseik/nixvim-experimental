{pkgs, ...}: {
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = false;
      nodejsPackage = pkgs.nodejs_22; 
      settings = {
        indent.enable = true;
        highlight.enable = true;
        ensure_installed = [ "comment" ];
        parser_install_dir = "$HOME/.local/share/treesitter";
      };
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    };

    hmts.enable = true;
  };
}
