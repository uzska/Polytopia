# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{

  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Include users file
      ./users.nix
      # Include afs options
      ./afs.nix
      # Include desktop/display manager options
      ./dmanager.nix
      # Include software
      ./software.nix
    ];


  # MOTD
  users.motd = "Welcome to Polytopia";
    
  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sdb";

  networking.hostName = "mandu"; # Define your hostname.
  #networking.wireless.enable = true;  # Enables wireless.
  
  hardware.opengl.driSupport32Bit = true;
  #services.xserver.driSupport32Bit = true;
    
  # timezone
  time.timeZone = "America/Los_Angeles";

  # allow unfree packages to be installed
  nixpkgs.config = {
    allowUnfree = true;
    # firefox settings
    firefox = {
      enableGoogleTalkPlugin = true;
      enableAdobeFlash = true;
      jre = true;
    };
    # chromium settings
    chromium = {
      enablePepperFlash = true;
      enablePepperPDF = true;
    };
  };
  
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Enable CUPS to print documents.
  services.printing = {
    enable = true;
    drivers = [ pkgs.gutenprint pkgs.splix ];
    cupsdConf = "";
  };

}
