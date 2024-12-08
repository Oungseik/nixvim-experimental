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

    (buildVimPlugin {
      pname = "hurl.nvim";
      version = "v2.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "jellydn";
        repo = "hurl.nvim";
        rev = "bc8d748a3754f63d50ee8dfd54e20de80f22754c";
        hash = "sha256-SU8TAZmoES06VU2ftYjXRg07tRfP5VyacLaRN1CCLRA=";
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

    require("hurl").setup({
      split_size = '50%',
      env_file = {
        ".env",
        "hurl.env"
      }
    })
  '';
}
