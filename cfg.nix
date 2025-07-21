{ pkgs ? import
    (fetchTarball {
      name = "unstable-2025-07-18";
      url = "https://github.com/NixOS/nixpkgs/archive/fa0ef8a6bb1651aa26c939aeb51b5f499e86b0ec.tar.gz";
      sha256 = "1xq0h56vmclmajjvciyrzg2d8g43vjra2b0kzfpcjvngvm57vanq";
    })
    { }
}:
let
  name = "cfg";
  tools = with pkgs; {
    cli = [
      bashInteractive
      coreutils
      cowsay
      curl
      delta
      direnv
      figlet
      git
      gron
      jq
      just
      moreutils
      nodePackages.prettier
      redis
      scc
      vscode
      yq-go
      (writeShellScriptBin "hms" ''
        nix-env -i -f ~/cfg.nix
      '')
    ];
    k8s = [
      kubectl
      kubectx
      k9s
    ];
    nix = [
      nix-direnv
      nixpkgs-fmt
      # nixup
    ];
    java = [
      maven
      zulu       #java 21
      zulu11     #java 11
    ];
    scripts = pkgs.lib.attrsets.attrValues scripts;
  };

  scripts = with pkgs; { };
  paths = pkgs.lib.flatten [ (builtins.attrValues tools) ];
  env = pkgs.buildEnv {
    inherit name paths; buildInputs = paths;
  };
in
(env.overrideAttrs (_: {
  inherit name;
  NIXUP = "0.0.9";
})) // { inherit scripts; }
