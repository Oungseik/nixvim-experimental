{
  imports = [ ./blink-cmp.nix ];

  plugins = {
    lz-n.enable = true;
    tmux-navigator.enable = true;
    which-key.enable = true;
  };
}
