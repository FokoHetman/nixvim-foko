{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [ ./opts.nix ./harpoon.nix ./languages.nix ];

  globals.mapleader = " ";
  colorschemes.catppuccin.enable = true;
  plugins = { # one line plugins
    lualine.enable = true;
    telescope = {
      enable = true;
      extensions.file-browser.enable = true;
      keymaps = {
        "<C-f>" = {
          action = "find_files";
          options = {
            desc = "Telescope Find Files";
          };
        };
        "<leader>fg" = "live_grep";
      };
    };
    oil.enable = true;
    treesitter.enable = true;
    luasnip.enable = true;
    bufferline.enable = true;

    
    vimtex.enable = true;
    image.enable = true;
    surround.enable = true;
    trouble.enable = true;
  };

  

  plugins.nvim-tree = {
    enable = true;
    openOnSetupFile = true;
    autoReloadOnWrite = true;
  };
  extraPlugins = with pkgs.vimPlugins; [
    
  ];
}
