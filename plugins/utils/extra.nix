{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "indentmini.nvim";
      version = "v0.1";
      src = pkgs.fetchFromGitHub {
        owner = "nvimdev";
        repo = "indentmini.nvim";
        rev = "dea29018328ffa397700ddb32d60103364e72f1b";
        hash = "sha256-5le5dIVsSuMkFly8VwvP8RLh3MIlgFqpgX/QtT3AhB8=";
      };
    })

    pkgs.vimPlugins.plenary-nvim
    pkgs.vimPlugins.nui-nvim
  ];

  extraConfigLua = ''
    require("indentmini").setup({
      only_current = true;
    })
    vim.cmd.highlight("IndentLineCurrent guifg=#b7bdf8")

    -- require("hurl").setup({
    --   split_size = '50%',
    --   auto_close = false,
    --   env_file = {
    --     ".env",
    --     "hurl.env"
    --   }
    -- })
  '';

  keymaps = [
    {
      mode = "n";
      key = "<Leader>r";
      action = "<Nop>";
      options = {
        silent = true;
        desc = "+REST";
      };
    }
    {
      mode = "n";
      key = "<leader>rs";
      options.silent = true;
      options.desc = "Show Last Hurl";
      action = "<cmd>HurlShowLastResponse<CR>";
    }
    {
      mode = "n";
      key = "<leader>rr";
      options.silent = true;
      options.desc = "Run Hurl";
      action = "<cmd>HurlRunnerAt<CR>";
    }
    {
      mode = "n";
      key = "<leader>ra";
      options.silent = true;
      options.desc = "Run Hurl File";
      action = "<cmd>HurlRunner<CR>";
    }
    {
      mode = "v";
      key = "<leader>rr";
      options.silent = true;
      options.desc = "Run Hurl";
      action = ":HurlRunner<CR>";
    }
    {
      mode = "n";
      key = "<leader>rt";
      options.silent = true;
      options.desc = "Run Hurl File";
      action = "<cmd>HurlRunnerToEntry<CR>";
    }
    {
      mode = "n";
      key = "<leader>re";
      options.silent = true;
      options.desc = "Run Hurl File";
      action = "<cmd>HurlRunnerToEnd<CR>";
    }
  ];
}
