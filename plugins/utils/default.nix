{
  plugins = {
    tmux-navigator.enable = true;
    which-key.enable = true;
  };

  imports = [
    ./extra.nix
    # ./flash.nix
    ./harpoon.nix
    ./lz-n.nix
    ./mini.nix
    ./oil.nix
    ./toggleterm.nix
  ];
}
