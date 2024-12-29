{
  plugins = {
    # nvim-autopairs.enable = false; # use mini.pair instead.
    # nvim-colorizer.enable = false;
    tmux-navigator.enable = true;
    which-key.enable = true;
  };

  imports = [
    ./extra.nix
    ./flash.nix
    ./harpoon.nix
    ./mini.nix
    ./oil.nix
    # ./rest.nix
    ./toggleterm.nix
  ];
}
