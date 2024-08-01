{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ./opts.nix ];

  globals.mapleader = " ";
  colorschemes.catppuccin.enable = true;
  plugins = {
    lualine.enable = true;
    telescope.enable = true;
    oil.enable = true;
    treesitter.enable = true;
    luasnip.enable = true;
  };
  plugins.lsp = {
    enable = true;
    servers = {
      tsserver.enable = true;
      lua-ls.enable = true;
      #rust-analyzer.enable = true;
      #rust-analyzer.installRustc = true;
      #rust-analyzer.installCargo = true;

    };
  };
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      {name="nvim_lsp";}
      {name="path";}
      {name="buffer";}
    ];

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
