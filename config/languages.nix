{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        tsserver.enable = true;
        lua-ls.enable = true;
     };
    };
    haskell-scope-highlighting.enable = true;
    zig.enable = true;
    rustaceanvim.enable = true;
    clangd-extensions.enable = true;
  };
}
