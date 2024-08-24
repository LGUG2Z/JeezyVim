{pkgs, ...}: {
  plugins.which-key = {
    enable = pkgs.lib.mkDefault true;
    settings = {
      notify = false;
      layout = {align = "center";};
      triggersNoWait = ["`" "'" "<leader>" "g`" "g'" "\"" "<c-r>" "z="];
      icons.colors = false;
      win = {
        border = "rounded";
        title = true;
        zindex = 10;
        padding = [
          1
          2
        ];
      };
      registrations = {
        "<leader>l" = "+LSP";
        "<leader>z" = "+Zen";
        "<leader>p" = "+Parameter swap";
      };
    };
  };
}
