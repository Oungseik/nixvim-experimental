{
  imports = [
    ./blink-cmp.nix
    ./keymaps.nix
  ];

  plugins = {
    lz-n.enable = true;
    tmux-navigator.enable = true;
    which-key.enable = true;
  };
}
