{
  globals.mapleader = " ";

  keymaps = [

    # normal mode
    {
      mode = "n";
      key = "<leader>q";
      options.silent = true;
      options.desc = "Quit";
      action = "<cmd>q<CR>";
    }
    {
      mode = "n";
      key = "<leader>w";
      options.silent = true;
      options.desc = "Save";
      action = "<cmd>w<CR>";
    }
    {
      mode = "n";
      key = "<leader>h";
      options.silent = true;
      options.desc = "Toggle Highlight";
      action = "<cmd>set invhlsearch<CR>";
    }
    {
      mode = "n";
      key = "<C-l>";
      options.silent = true;
      action = "<C-w>l";
    }
    {
      mode = "n";
      key = "<C-h>";
      options.silent = true;
      action = "<C-w>h";
    }
    {
      mode = "n";
      key = "<C-j>";
      options.silent = true;
      action = "<C-w>j";
    }
    {
      mode = "n";
      key = "<C-k>";
      options.silent = true;
      action = "<C-w>k";
    }

    # swapping lines
    {
      mode = "n";
      key = "<A-j>";
      action = ":m .+1<CR>==";
    }
    {
      mode = "n";
      key = "<A-k>";
      action = ":m .-2<CR>==";
    }

    # insert mode bindings
    {
      mode = "i";
      key = "<C-l>";
      options.silent = true;
      action = "<End>";
    }

    # visual mode bindings
    # select lines and indent
    {
      mode = "v";
      key = ">";
      action = ">gv";
    }
    {
      mode = "v";
      key = "<";
      action = "<gv";
    }

    # select lines and swap
    {
      mode = "v";
      key = "<A-j>";
      action = ":m '>+1<CR>gv=gv";
    }
    {
      mode = "v";
      key = "<A-k>";
      action = ":m '<-2<CR>gv=gv";
    }
  ];

  extraConfigLua = ''
    vim.keymap.set({ "i", "s" }, "<Tab>", function()
    	if vim.snippet.active({ direction = 1 }) then
    		return "<cmd>lua vim.snippet.jump(1)<cr>"
    	else
    		return "<Tab>"
    	end
    end, { expr = true })
    vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
    	if vim.snippet.active({ direction = -1 }) then
    		return "<cmd>lua vim.snippet.jump(-1)<cr>"
    	else
    		return "<S-Tab>"
    	end
    end, { expr = true })
  '';
}
