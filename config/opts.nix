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
  };
  keymaps = [
    {action = "<cmd>Telescope live_grep<CR>"; key="<leader>g";}
  ];
  highlight = {
    Comment.fg = "#ff00ff";
    Comment.bg = "#000000";
    Comment.underline = true;
    Comment.bold = true;
  };
}
