{
  # afs stuff *TODO*------------------------------------------------------
  # ldap options *********************************************************
  services.openldap.enable = true; # enable ldap server
  #serviecs.openldap.extraConfig
  # serviecs.openldap.group
  # services.openldap.user
  #serviecs.ldap.base
  users.ldap.base = "dc=reed,dc=edu"; # distinguished name of the search base
  users.ldap.daemon.enable = true; #starts nslcd service automatically
  users.ldap.enable = true;
  users.ldap.server = "uri ldapi:///ldap.reed.edu:389/";
  users.ldap.daemon.extraConfig =
    ''
       ldap_version 3
       pam_password md5
    '';
			      
  # openafsClient options ***********************************************
  #services.openafsClient.cacheDirectory = "/afs:/var/cache/openafs:5000";
  services.openafsClient.cellName = "reed.edu";
  services.openafsClient.enable = true;

  # NSS options ********************************************************* 
  # search path for NSS modules. This allows several DNS resolution
  # methods to be specified via /etc/nsswitch.conf
  system.nssModules = [];
  # services.avahi.nssmdns

  # krb5 options ********************************************************* 
  krb5.enable = true; 
  krb5.defaultRealm = "REED.EDU";
  krb5.domainRealm = "reed.edu";
  krb5.kdc = "kerberos-1.reed.edu";
  krb5.kerberosAdminServer = "kerberos-1.reed.edu";

  # pam options *********************************************************
  security.pam.services = [];

  ## END *TODO* ----------------------------------------------------------
}
