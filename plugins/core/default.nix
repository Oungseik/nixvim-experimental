{
  imports = [
    ./blink-cmp.nix
    ./bufferline.nix
    ./keymaps.nix
    ./lualine.nix
    ./treesitter.nix
  ];

  plugins = {
    lz-n.enable = true;
    tmux-navigator.enable = true;
    which-key.enable = true;
  };
}
