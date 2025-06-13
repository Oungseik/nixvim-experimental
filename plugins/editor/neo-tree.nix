{
  plugins.neo-tree = {
    enable = true;
    window = {
      position = "float";
      mappings = {
        A = "git_add_all";
        gu = "git_unstage_file";
        ga = "git_add_file";
        gr = "git_revert_file";
        gc = "git_commit";
        gp = "git_push";
        gg = "git_commit_and_push";
      };
    };
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
