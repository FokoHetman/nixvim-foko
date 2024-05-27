{lib,...}: {
  #globals.mapleader = " ";
  opts = {

    number = true;
    #relativenumber = true;
    #clipboard = "unnamedplus";
    
    sw=2;
    sts=2;
    #ts=2;
    expandtab=true;
    smarttab=true;
    autoindent=true;
  };
  keymaps = [
    {action = "<cmd>NvimTreeOpen<CR>"; key="<leader>t";}
  ];
  highlight = {
    Comment.fg = "#ff00ff";
    Comment.bg = "#000000";
    Comment.underline = true;
    Comment.bold = true;
  };
}
