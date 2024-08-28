{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [ ./opts.nix ./harpoon.nix ./languages.nix ];

  globals.mapleader = " ";
  colorschemes.catppuccin.enable = true;
  plugins = { # one line plugins
    lualine.enable = true;
    telescope.enable = true;
    oil.enable = true;
    treesitter.enable = true;
    luasnip.enable = true;
    bufferline.enable = true;

    haskell-scope-highlighting.enable = true;
    zig.enable = true;
    rustaceanvim.enable = true;

    vimtex.enable = true;
    image.enable = true;
  };

  

  plugins.nvim-tree = {
    enable = true;
    openOnSetupFile = true;
    autoReloadOnWrite = true;
  };
  extraPlugins = with pkgs.vimPlugins; [
    vimtex
  ];
}
