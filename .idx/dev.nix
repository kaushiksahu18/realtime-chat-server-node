# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_20
    pkgs.nodePackages.pnpm
    pkgs.git

    # terminal
    pkgs.zsh
    pkgs.fzf
    pkgs.eza
    pkgs.bat
    pkgs.tldr
    pkgs.btop
    pkgs.neovim
    pkgs.zoxide
    pkgs.thefuck
    pkgs.starship
    pkgs.fira-code
    pkgs.meslo-lgs-nf
  ];
  # Sets environment variables in the workspace
  env = { };
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "rangav.vscode-thunder-client"
      "metaphore.kanagawa-vscode-color-theme"
      "esbenp.prettier-vscode"
      "PKief.material-icon-theme"
      "jock.svg"
      "usernamehw.errorlens"
      "yoavbls.pretty-ts-errors"
    ];
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onCreate = {
        # npm-install = "npm ci --no-audit --prefer-offline --no-progress --timing";
      };
      # Runs when a workspace is (re)started
      onStart = {
        # run-server = "npm run dev";
      };
    };
  };
}
