{
  autoCmd = [
    {
      event = ["BufWinEnter"];
      callback = {
        __raw = ''
          function()
              vim.cmd "set formatoptions-=cro"
          end
        '';
      };
    }
    {
      event = ["FileType"];
      pattern = [
        "markdown"
      ];
      callback = {
        __raw = ''
          function()
            vim.cmd ":TSDisable highlight"
          end
        '';
      };
    }
    {
      event = ["FileType"];
      pattern = [
        "netrw"
        "Jaq"
        "qf"
        "git"
        "help"
        "man"
        "lspinfo"
        "alpha"
        "lir"
        "DressingSelect"
        ""
      ];
      callback = {
        __raw = ''
          function()
            vim.cmd [[
              nnoremap <silent> <buffer> q :close<CR>
              set nobuflisted
            ]]
          end
        '';
      };
    }
    {
      event = ["CmdWinEnter"];
      callback = {
        __raw = ''
          function()
              vim.cmd "quit"
            end
        '';
      };
    }
    {
      event = ["VimResized"];
      callback = {
        __raw = ''
          function()
              vim.cmd "tabdo wincmd ="
          end
        '';
      };
    }
  ];
}
