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
  keymaps = [
    {action = "<cmd>NvimTreeOpen<CR>"; key="<leader>t";}
    {action = "<cmd>VimtexCompile<CR>"; key="<leader>l";}
    {action = "<cmd>Telescope live_grep<CR>"; key="<leader>g";}
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
