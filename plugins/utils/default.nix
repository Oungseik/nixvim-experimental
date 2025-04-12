{
  plugins = {
    tmux-navigator.enable = true;
    which-key.enable = true;
  };

  imports = [
    ./extra.nix
    # ./flash.nix
    ./harpoon.nix
    ./hurl.nix
    ./mini.nix
    ./oil.nix
    ./toggleterm.nix
  ];
}
