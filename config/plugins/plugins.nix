{
  plugins = {
    nvim-autopairs = {
      enable = true;
      settings.checkTs = true;
    };
    crates-nvim.enable = true;
    bacon.enable = true;
    rust-tools.enable = true;
    lastplace.enable = true;
    todo-comments = {
      enable = true;
      mergeKeywords = true;
      highlight = {
        before = "";
        after = "fg";
        keyword = "wide";
      };
      keywords = {
        QUESTION = {icon = "";};
      };
    };
    comment.enable = true;
    sleuth.enable = true;
    nvim-tree = {
      enable = true;
    };
    toggleterm = {
      enable = true;
      settings = {
        direction = "float";
        floatOpts = {border = "single";};
        terminalMappings = true;
      };
    };
    illuminate = {
      enable = true;
      underCursor = true;
    };
    navic = {
      enable = true;
      highlight = true;
      lsp.autoAttach = true;
    };
    better-escape = {
      enable = true;
      keys = "<Esc>";
      mapping = ["jk"];
    };
    nvim-colorizer.enable = true;
    marks.enable = true;
    vim-matchup = {
      enable = true;
      enableSurround = true;
      enableTransmute = true;
      treesitterIntegration.enable = true;
    };
  };
}
