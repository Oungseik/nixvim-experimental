{ pkgs, ... }: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "nvim-web-devicons";
      version = "v20.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "nvim-tree";
        repo = "nvim-web-devicons";
        rev = "3722e3d1fb5fe1896a104eb489e8f8651260b520";
        hash = "sha256-TeWMlfNTA5+tiPq6D2TVWjdfJVr3FOwpqUDU8kfFZ8E=";
      };
    })
  ];

}
