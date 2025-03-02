{
  plugins = {
    lsp = {
      inlayHints = true;

      enable = true;
      servers = {
        html.enable = true;
        pyright.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        tsserver.enable = true;
        lua-ls.enable = true;
      };
      keymaps = {
        lspBuf = {
          gd = {
            action = "definition";
            desc = "go to definition (idk)";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
        };
        diagnostic = {
          "<leader>d" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
    haskell-scope-highlighting.enable = true;
    zig.enable = true;
    nix.enable = true;
    rustaceanvim.enable = true;
    clangd-extensions.enable = true;
  };
}
