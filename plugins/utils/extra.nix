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
  '';
}
