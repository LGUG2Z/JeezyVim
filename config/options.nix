{
  config = {
    clipboard = {
      register = "unnamedplus";
    };
    editorconfig.enable = true;
    opts = {
      termguicolors = true;
      showmode = false;
      backup = false;
      cmdheight = 1;
      conceallevel = 0;
      encoding = "utf-8";
      fileencoding = "utf-8";
      title = true;
      hlsearch = true;
      incsearch = true;
      inccommand = "nosplit";
      mouse = "a";
      ignorecase = true;
      smartcase = true;
      smartindent = false;
      splitbelow = true;
      splitright = true;
      splitkeep = "cursor";
      swapfile = false;
      undofile = true;
      updatetime = 300;
      writebackup = false;
      expandtab = true;
      shiftwidth = 4;
      tabstop = 4;
      cursorline = true;
      laststatus = 3;
      number = true;
      relativenumber = true;
      signcolumn = "yes";
      wrap = true;
      scrolloff = 8;
      listchars = {
        tab = "󰌒 ";
        trail = "•";
        nbsp = "␣";
      };
      list = true;
      showbreak = "↪ ";
      foldmethod = "expr";
      foldnestmax = 20;
      foldminlines = 2;
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;
      foldexpr = "nvim_treesitter#foldexpr()";
    };
  };
}
