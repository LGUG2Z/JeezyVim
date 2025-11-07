{pkgs, ...}: {
  plugins.none-ls = {
    enable = pkgs.lib.mkDefault true;
    sources = {
      code_actions = {
        statix.enable = pkgs.lib.mkDefault true;
      };

      diagnostics = {
        stylelint.enable = pkgs.lib.mkDefault true;
        statix.enable = pkgs.lib.mkDefault true;
        sqlfluff.enable = pkgs.lib.mkDefault true;
        rubocop.enable = pkgs.lib.mkDefault true;
        pylint.enable = pkgs.lib.mkDefault true;
        mypy.enable = pkgs.lib.mkDefault true;
        markdownlint.enable = pkgs.lib.mkDefault true;
        hadolint.enable = pkgs.lib.mkDefault true;
        fish.enable = pkgs.lib.mkDefault true;
        dotenv_linter.enable = pkgs.lib.mkDefault true;
        deadnix.enable = pkgs.lib.mkDefault true;
        trail_space.enable = pkgs.lib.mkDefault true;
      };

      formatting = {
        stylua.enable = pkgs.lib.mkDefault true;
        alejandra.enable = pkgs.lib.mkDefault true;
        shfmt.enable = pkgs.lib.mkDefault true;
        gofmt.enable = pkgs.lib.mkDefault true;
        black.enable = pkgs.lib.mkDefault true;
        isort.enable = pkgs.lib.mkDefault true;
        prettier.enable = pkgs.lib.mkDefault true;
        prettier.disableTsServerFormatter = pkgs.lib.mkDefault true;
        typstyle.enable = pkgs.lib.mkDefault true;
      };
    };
  };
}
