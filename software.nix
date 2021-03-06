{ config, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
     # system tools
     wget
     unzip
     gnome3.file-roller
     nix-repl
     cups
     system_config_printer
     gutenprint
     gutenprintBin
     splix
     gparted
     unetbootin
     nix
                    
     # C libraries
     glibc
     glibcInfo
     glibcLocales    

     
     # afs
     linuxPackages_3_17.openafsClient
     #linuxPackages_3_4.openafsClient
     #linuxPackages_3_2.openafsClient
     #linuxPackages_3_10.openafsClient
     #linuxPackages_grsec_stable_desktop.openafsClient
     pam_krb5
     heimdal
     nss
     nss_pam_ldapd
     nss_ldap
     pam_ldap
     pam_ccreds
     openldap      
     kerberos     
     pam_ccreds

     # login manager
     slim
     lightdm

     # browsers     
     firefoxWrapper # for plugins
     chromium
           
     # text editiors
     vim
     emacs
     #emacs24Packages.autoComplete

     # wordprocessor
     libreoffice     

     # Programming tools
     gitAndTools.gitFull
    
     # cuda 
     #haskellPackages_ghc783_profiling.cuda 
     cudatoolkit6

     # nvidia
     nvidia-texture-tools 

     # haskell
     haskellPackages_ghc783_profiling.ghc
     haskellPackages_ghc783_profiling.cabalInstall     

     # xmonad
     #haskellPackages_ghc783_profiling.xmobar
     dmenu
     haskellPackages_ghc783_profiling.xmonad
     haskellPackages_ghc783_profiling.xmonadContrib
     haskellPackages_ghc783_profiling.xmonadExtras
     
     # gcc
     gcc49

     # java
     #icedtea7_jdk
     #icedtea7_jre
     #icedtea7_web
     jdk

     # scala
     scala
     
     # erlang
     erlang

     # Standard ML nj
     smlnj

     # openmpi
     openmpi

     # open gl
     xorg_sys_opengl

     # python
     python
     python34Packages.numpy
     python34Packages.pyopengl

     # latex
     texLive

     # steam
     steamChrootEnv

     wineUnstable
     winetricks
     
  ];  
}
