{lib,...}: {
  globals.mapleader = " ";
  opts = {

    number = true;
    #relativenumber = true;
    #clipboard = "wl-clipboard";
    
    sw=2;
    sts=2;
    #ts=2;
    expandtab=true;
    smarttab=true;
    autoindent=true;
    smartindent=true;
  };
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name="nvim_lsp";}
        {name="path";}
        {name="buffer";}
        {name="luasnip";}
      ];

      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        #  modes = [ "i" "s" ];
        #};
      };
    };
  };
  keymaps = [
    {action = "<cmd>NvimTreeToggle<CR>"; key="<C-t>";}
    {action = "<cmd>VimtexCompile<CR>"; key="<leader>l";}
    {action = "<cmd>Telescope live_grep<CR>"; key="<leader>g";}
    
    {action = "v<Up>"; key="<S-Up>";}
    {action = "v<Down>"; key="<S-Down>";}
    {action = "v<Left>"; key="<S-Left>";}
    {action = "v<Right>"; key="<S-Right>";}
    {action = "<Esc>v<Up>"; key="<S-Up>"; mode=["i"];}
    {action = "<Esc>v<Down>"; key="<S-Down>"; mode=["i"];}
    {action = "<Esc>v<Left>"; key="<S-Left>"; mode=["i"];}
    {action = "<Esc>v<Right>"; key="<S-Right>"; mode=["i"];}

    {action = "<cmd>bnext<CR>"; key="<C-Right>";}
    {action = "<cmd>bprev<CR>"; key="<C-Left>";}
  ];
  #autoCmd = [
  #  event = [ "BufEnter" "BufWinEnter" ];
  #];
  highlight = {
    Comment.fg = "#ff00ff";
    Comment.bg = "#000000";
    Comment.underline = true;
    Comment.bold = true;
  };
}
