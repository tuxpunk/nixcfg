{lib, ...}: {
  programs.ssh = {
    enable = true;

    enableDefaultConfig = false;

    settings = {
      "*" = {
        ForwardAgent = false;
        AddKeysToAgent = "no";
        Compression = false;
        ServerAliveInterval = 0;
        ServerAliveCountMax = 3;
        HashKnownHosts = false;
        UserKnownHostsFile = "~/.ssh/known_hosts";
        ControlMaster = "no";
        ControlPath = "~/.ssh/master-%r@%n:%p";
        ControlPersist = "no";
      };

      "github.com" = {
        HostName = "github.com";
        User = "git";
        IdentityFile = "~/.ssh/id_ed25519_github";
        IdentitiesOnly = true;
      };

      "homelab" = {
        HostName = "server.lab.homelab-test.ir";
        User = "rstlss";
        IdentityFile = "~/.ssh/id_ed25519_homelab";
        IdentitiesOnly = true;
      };

      "homelab-lan" = {
        HostName = "192.168.1.140";
        User = "rstlss";
        IdentityFile = "~/.ssh/id_ed25519_homelab";
        IdentitiesOnly = true;
      };
    };
  };
}
