{
  plugins.telescope = {
    enable = true;

    # lazyLoad = {
    #   enable = true;
    #   settings = {
    #     cmd = "Telescope";
    #   };
    # };
    #
    settings = {
      defaults = {
        file_ignore_patterns = [
          "^.git/"

          "^.mypy_cache/"
          "^__pycache__/"
          ".venv"
          "%.ipynb"

          "^output/"
          "^data/"

          "node_modules"
          "dist"
        ];
        layout_config = {
          # width = 0.75;
        };
      };
    };

  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>s";
      action = "<Nop>";
      options = {
        silent = true;
        desc = "+Search";
      };
    }
    {
      mode = "n";
      key = "<leader>f";
      options.silent = true;
      options.desc = "Search File";
      action = "<cmd>Telescope find_files<CR>";
    }
    {
      mode = "n";
      key = "<leader>sf";
      options.silent = true;
      options.desc = "Search File";
      action = "<cmd>Telescope find_files<CR>";
    }

    {
      mode = "n";
      key = "<leader>sb";
      options.silent = true;
      options.desc = "Find buffers";
      action = "<cmd>Telescope buffers<CR>";
    }

    {
      mode = "n";
      key = "<leader>st";
      options.silent = true;
      options.desc = "Search Text";
      action = "<cmd>Telescope live_grep<CR>";
    }
    {
      mode = "n";
      key = "<leader>sg";
      options.silent = true;
      options.desc = "Search Git Status";
      action = "<cmd>Telescope git_status<CR>";
    }
  ];
}
