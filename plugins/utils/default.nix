{
  plugins = {
    nvim-autopairs.enable = true;
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
