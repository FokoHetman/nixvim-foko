{
  plugins.lsp = {
    enable = true;
    servers = {
      tsserver.enable = true;
      lua-ls.enable = true;
      rust-analyzer.enable = true;
      rust-analyzer.installRustc = true;
      rust-analyzer.installCargo = true;
    };
  };
}
