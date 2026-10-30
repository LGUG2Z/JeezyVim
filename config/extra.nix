{ pkgs, ... }:
{
  extraConfigLuaPost = builtins.readFile ./extra.lua;

  extraPackages =
    with pkgs;
    [
      # runtime dependencies
      fd
      ripgrep
    ]
    ++ pkgs.lib.optionals pkgs.stdenv.hostPlatform.isDarwin [
      # runtime dependencies
      gnused
    ];
}
