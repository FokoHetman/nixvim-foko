{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [ ./opts.nix ./harpoon.nix ./languages.nix ];

  globals.mapleader = " ";
  colorschemes.catppuccin.enable = true;
  clipboard = {
    providers.wl-copy.enable = true;
  };
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
    illuminate = {
      enable = true;
      underCursor = false;
    };
    obsidian = {
      enable = true;
      settings = {
        workspaces = [
          {
            name = "Vault";
            path = "~/Projects/Vault/";
          }
        ];
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
  extraConfigLua = ''
    require("lspconfig").nixd.setup({
      cmd = { "nixd" },
      settings = {
        nixd = {
          nixpkgs = {
            expr = "import <nixpkgs> { }",
          },
          formatting = {
            command = { "alejandra" }, -- or nixfmt or nixpkgs-fmt
          },
          options = {
            nixos = {
              expr = '(builtins.getFlake "github:fokohetman/nixos").nixosConfigurations.fokopc.options',
            },
          --   home_manager = {
          --       expr = '(builtins.getFlake "/PATH/TO/FLAKE").homeConfigurations.CONFIGNAME.options',
          --   },
          },
        },
      },
    })
  '';
}
