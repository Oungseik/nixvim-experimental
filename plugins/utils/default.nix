{
  plugins = {
    nvim-autopairs.enable = true;
    # nvim-colorizer.enable = false;
    tmux-navigator.enable = true;
    which-key.enable = true;
  };

  imports = [
    ./flash.nix
    ./rest.nix
    ./toggleterm.nix
  ];
}
