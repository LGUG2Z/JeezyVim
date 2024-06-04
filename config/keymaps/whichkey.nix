{pkgs, ...}: {
  plugins.which-key = {
    enable = pkgs.lib.mkDefault true;
    layout = {align = "center";};
    triggersNoWait = ["`" "'" "<leader>" "g`" "g'" "\"" "<c-r>" "z="];
    window = {
      border = "rounded";
      position = "bottom";
      winblend = 10;
      margin = {
        top = 1;
        right = 1;
        bottom = 2;
        left = 1;
      };
    };
    registrations = {
      "<leader>l" = "+LSP";
      "<leader>z" = "+Zen";
      "<leader>p" = "+Parameter swap";
    };
  };
}
