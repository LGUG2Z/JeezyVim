{pkgs, ...}: {
  plugins.specs = {
    enable = pkgs.lib.mkDefault true;
    # nvim 0.10-related bugfix: https://github.com/edluffy/specs.nvim/issues/31
    package = pkgs.vimUtils.buildVimPlugin {
      name = "specs.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "cxwx";
        repo = "specs.nvim";
        rev = "dd82496f538b688cedf98429f89fef47ecb0625e";
        hash = "sha256-GmiJP4pxDdcnG6muNlJEkvUlhrLh6+Ft8iIOHk13RxA=";
      };
    };
    settings = {
      min_jump = 10;
      increment = 10;
      delay = 10;
      width = 20;
    };
  };
}
