{
  plugins.none-ls = {
    enable = true;
    sources = {
      code_actions = {
        statix.enable = true;
      };

      diagnostics = {
        stylelint.enable = true;
        statix.enable = true;
        sqlfluff.enable = true;
        rubocop.enable = true;
        pylint.enable = true;
        mypy.enable = true;
        markdownlint.enable = true;
        hadolint.enable = true;
        fish.enable = true;
        dotenv_linter.enable = true;
        djlint.enable = true;
        deadnix.enable = true;
        trail_space.enable = true;
      };

      formatting = {
        stylua.enable = true;
        alejandra.enable = true;
        shfmt.enable = true;
        gofmt.enable = true;
        rubyfmt.enable = true;
        black.enable = true;
        isort.enable = true;
        prettier.enable = true;
        prettier.disableTsServerFormatter = true;
        typstfmt.enable = true;
      };
    };
  };
}
