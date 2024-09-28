{
  colorschemes.catppuccin = {
    enable = true;
    settings.flavour = "macchiato";
  };

  extraConfigLua = ''
    -- auto-reload files when modified externally
    -- https://unix.stackexchange.com/a/383044
    vim.o.autoread = true
    vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
      command = "if mode() != 'c' | checktime | endif",
      pattern = { "*" },
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "json",
      callback = function()
        vim.bo.formatexpr = "v:lua.require'conform'.formatexpr()"
      end,
    })
  '';

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
    providers.xsel.enable = true;
  };

  opts = {
    number = true;
    relativenumber = true;
    termguicolors = true;
    showmode = false;
    splitbelow = true;
    splitright = true;
    splitkeep = "screen";
    scrolloff = 8;
    foldmethod = "manual";
    foldenable = false;
    linebreak = true;
    cursorline = true;
    signcolumn = "yes";
    ignorecase = true;
    wrap = false;
    tabstop = 2;
    softtabstop = 2;
    showtabline = 2;
    shiftwidth = 2;
    expandtab = true;
    smartindent = true;
    breakindent = true;
  };

  filetype.extension = {
    http = "http";
  };

}
