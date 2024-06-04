# JeezyVim

JeezyVim is a declarative NeoVim configuration built with
[NixVim](https://github.com/nix-community/nixvim).

This configuration aims to keep the familiarity of
[LunarVim](https://lunarvim.org) while aggressively stripping away excessive
IDE-like features to focus on delivering a fast, stable and reliable _editor_
experience.

JeezyVim aims to keep any manually written Lua code to an absolute minimum, and
for the purposes of this project any committed Lua files are considered to be
technical debt.

This configuration gradually came to be out of the aggressive pruning of
plugins that were unncessary for me in [dileep-kishore's neovim
configuration](https://github.com/dileep-kishore/neovim), which is also an
excellent configuration for people looking for a "maximalist" configuration.

![image](https://github.com/LGUG2Z/JeezyVim/assets/13164844/df05aac6-f436-460e-a851-1796e8ae9456)

## Usage and Installation

You can run this flake directly to try it out:

```bash
nix run github:LGUG2Z/JeezyVim
```

You can add JeezyVim as an input to your flake configuration like this:

```nix
{
    inputs.jeezyvim.url = "github:LGUG2Z/JeezyVim";
}
```

You can add the `inputs.jeezyvim.overlays.default` overlay to your `nixpkgs` to
make `pkgs.jeezyvim` available.

If you are using any of my [NixOS starter
templates](https://github.com/search?q=owner%3ALGUG2Z+nixos&type=repositories),
you would add this to the `overlays` list in the `nixpkgsWithOverlays` function
in `flake.nix`.

## Extending

Is there a plugin or an LSP that you don't see enabled here, but you would like
to enable when you install `pkgs.jeezyvim`? No problem!

```nix
{pkgs, ...}: {
  home.packages = [
    (pkgs.jeezyvim.nixvimExtend {
      # you can put anything under the "Options" section of the NixVim docs here
      # https://nix-community.github.io/nixvim/

      # some examples...

      # all your regular vim options here
      options = {
        textwidth = 120;
      };

      config = {
      # add your own personal keymaps preferences
        keymaps = [
          {
            mode = "n";
            action = ":vsplit<CR>";
            key = "|";
          }

          {
            mode = "n";
            action = ":split<CR>";
            key = "-";
          }
        ];


        plugins = {
          lsp.servers = {
            # full list of language servers you can enable on the left bar here:
            # https://nix-community.github.io/nixvim/plugins/lsp/servers/ansiblels/index.html

            graphql.enable = true;
          };

          # full list of plugins on the left bar here:
          # https://nix-community.github.io/nixvim/plugins/airline/index.html

          markdown-preview.enable = true;
        };
      };
    })
  ];
}
```

## Forking

You can also just fork this repo and use it as a starting point for your own
configuration!

## Overview

[LSPs](./config/lsp/lsp.nix), [formatters and
linters](./config/lsp/none-ls.nix) are set up for most common languages and
configuration file types, as well the common TreeSitter-related plugins you
probably remember from LunarVim.

The UI is also largely similar to LunarVim, using the
[lualine](./config/lualine.nix), [bufferline](./config/bufferline.nix) and
[telescope](./config/ui/telescope.nix) plugins.

The [keymaps](./config/keymaps/keymaps-general.nix) are what you would expect,
and [whichkey](./config/keymaps/whichkey.nix) is also integrated into the
configuration to make various [plugin
keymaps](./config/keymaps/keymaps-plugins.nix) discoverable.

## Superpowers

There are a handful of shortcuts that I consider my superpowers in JetBrains
IDEs which I have made LSP-equivalents for in this configuration.

- `,,` to rename whatever is under the cursor - trust me, this is the best
  shortcut I've ever made
- `,b` to peek at the definition of whatever is under the cursor
- `,B` to jump to the definition of whatever is under the cursor, _or_, if
  already at the definition, find all usages of the definition in a codebase
- `<C-t>` to toggle in and out of the terminal; if the terminal line is
  focused, you can hit `<Esc>` to switch to normal mode in the terminal and
  then `<C-t>` again to hide it
- `<Space>e` to toggle NvimTree, which when opening, will jump to the file in
  the current buffer
- `<Space>s` to live grep
- `<Space>f` to search through git-tracked files
