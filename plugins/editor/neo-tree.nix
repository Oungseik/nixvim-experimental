{
  plugins.neo-tree = {
    enable = true;
    window.position = "float";
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      options.silent = true;
      options.desc = "Explorer";
      action = "<cmd>Neotree toggle<CR>";
    }
    {
      mode = "n";
      key = "<C-e>";
      options.silent = true;
      options.desc = "Reveal Explorer";
      action = "<cmd>Neotree reveal<CR>";
    }
  ];
}
