_: {
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "tuxpunk";
        email = "72990855+tuxpunk@users.noreply.github.com";
      };

      init.defaultBranch = "main";

      pull.rebase = true;
      push.autoSetupRemote = true;
      fetch.prune = true;

      core.editor = "nvim";

      url."git@github.com:".insteadOf = "https://github.com/";
    };
  };
}
