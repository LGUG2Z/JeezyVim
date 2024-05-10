{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    theme = "kanagawa";
    disabledFiletypes.statusline = [
      "alpha"
    ];
    sections = {
      lualine_x = [
        "filetype"
      ];
    };
  };
}
