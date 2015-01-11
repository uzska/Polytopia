{ config, pkgs, ... }:
{

  # f2014
  users.extraUsers.aemerman =
  { createHome = false;
    home = "/afs/reed.edu/user/a/e/aemerman";
    useDefaultShell = true;
    group = "users";
  };
  # s2016
  users.extraUsers.aledger =
  { createHome = false;
    home = "/afs/reed.edu/user/a/l/aledger";
    useDefaultShell = true;
    group = "users";
  };

  # fmacrae  - 
  users.extraUsers.fmacrae =
  { createHome = false;
    home = "/afs/reed.edu/user/f/m/fmacrae";
    useDefaultShell = true;
    group = "users";
  };

  users.extraUsers.dblount =
  { createHome = false;
    home = "/afs/reed.edu/user/d/b/dblount";
    useDefaultShell = true;
    group = "users";
  };

  # s2016
  users.extraUsers.joej =
  { createHome = false;
    home = "/afs/reed.edu/user/j/o/joej";
    useDefaultShell = true;
    group = "wheel";
  };  
  # 
  users.extraUsers.jhaft =
  { createHome = false;
    home = "/afs/reed.edu/user/j/h/jhaft";
    useDefaultShell = true;
    group = "users";
  };

  # s2016
  users.extraUsers.jhepwort =
  { createHome = false;
    home = "/afs/reed.edu/user/j/h/jhepwort";
    useDefaultShell = true;
    group = "users";
  };

  # s2015
  users.extraUsers.jmenick =
  { createHome = false;
    home = "/afs/reed.edu/user/j/m/jmenick";
    useDefaultShell = true;
    group = "users";
  };

    # s2015
  users.extraUsers.jrennie =
  { createHome = false;
    home = "/afs/reed.edu/user/j/r/jrennie";
    useDefaultShell = true;
    group = "users";
  };
  
  # 
  users.extraUsers.lopeze =
  { createHome = false;
    home = "/afs/reed.edu/user/l/o/lopeze";
    useDefaultShell = true;
    group = "users";
  };

  # f2014
  users.extraUsers.mmaguire =
  { createHome = false;
    home = "/afs/reed.edu/user/m/m/mmaguire";
    useDefaultShell = true;
    group = "users";
  };
  
    
  # s 2015
  users.extraUsers.nkashani =
  { createHome = false;
    home = "/afs/reed.edu/user/n/k/nkashani";
    useDefaultShell = true;
    group = "users";
  };

  # s 2016
  users.extraUsers.shankarj =
  { createHome = false;
    home = "/afs/reed.edu/user/s/h/shankarj";
    useDefaultShell = true;
    group = "users";
  };


  # s 2015
  users.extraUsers.smirnown =
  { createHome = false;
    home = "/afs/reed.edu/user/s/m/smirnown";
    useDefaultShell = true;
    group = "users";
  };
      
  users.extraUsers.polytopia =
  { createHome = true;
    home = "/home/polytopia";
    useDefaultShell = true;
    group = "wheel";  
  };

}
