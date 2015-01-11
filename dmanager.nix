{ config, pkgs, ... }:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";  

  # Enable the Gnome Desktop Environment.
  services.xserver.desktopManager.gnome3.enable = true;

  # Enable xfce
  services.xserver.desktopManager.xfce.enable = true;

  # Enable xmonad
  services.xserver.windowManager.xmonad.enable = true;
  services.xserver.windowManager.xmonad.enableContribAndExtras = true;
  #services.xserver.windowManager.xmonad.extraPackages =
  #haskellPackages: [
    #haskellPackages_ghc783_profiling.xmonadContrib
    #haskellPackages_ghc783_profiling.xmobar
  #  haskellPackages.xmonadContrib
  #  haskellPackages.xmobar
  #];

  #services.xserver.windowManager.xmonad.haskellPackages
  
  # Enable lightdm
  # services.xserver.displayManager.lightdm.enable = true;
  
  # Enable slim
  # services.xserver.displayManager.slim.enable = true;

  # Enable Enlightenment 19
  # services.xserver.desktopManager.e19.enable = true;

  # Enable kdm
  services.xserver.displayManager.kdm.enable = true;
  services.xserver.displayManager.kdm.themeDirectory = null;
  
  # Enable the KDE Desktop Environment.
  services.xserver.desktopManager.kde4.enable = true;

  # allow nvidia driver
  services.xserver.videoDrivers = [ "nvidia" ];
  # enable gpu support
  services.xserver.vaapiDrivers = [ pkgs.vaapiIntel ];

  # allow x11 forwarding
  services.lshd.x11Forwarding = true;
  services.openssh.forwardX11 = true;
  programs.ssh.forwardX11 = true;


}
