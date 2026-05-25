# nix/modules/nixos.nix — auto-generated from bevy_app.caixa.lisp
# description: "Provides core App functionality for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_app;
in {
  options.services.bevy_app = {
    enable = lib.mkEnableOption "bevy_app";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_app or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
