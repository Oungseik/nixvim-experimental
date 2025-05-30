{
  plugins.mini = {
    enable = true;
  };

  extraConfigLua = ''
    -- rarely use
    -- require("mini.align").setup()
    require('mini.bufremove').setup()
    require("mini.git").setup()
    -- not sure this is needed when devicon is enabled
    -- require("mini.icons").setup()
    require("mini.pairs").setup()

    require("mini.indentscope").setup({ only_current = true, draw = { animation = require("mini.indentscope").gen_animation.none() } })
    vim.cmd.highlight("IndentLineCurrent guifg=#b7bdf8")
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>c";
      options.silent = true;
      options.desc = "Close Buffer";
      action = ":lua if not pcall(function () MiniBufremove.delete(0, false) end) then vim.cmd.quit() end<cr>";
    }
    {
      mode = "n";
      key = "<Leader>ga";
      action = ":Git add %<cr>";
      options = {
        silent = true;
        desc = "Git Add Buffer";
      };
    }

    {
      mode = "n";
      key = "<Leader>gc";
      action = ":Git commit<cr>";
      options = {
        silent = true;
        desc = "Git Commit";
      };
    }
  ];
}
