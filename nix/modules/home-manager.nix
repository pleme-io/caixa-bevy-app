# nix/modules/home-manager.nix — auto-generated from bevy_app.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_app; in {
  options.programs.bevy_app = {
    enable = lib.mkEnableOption "bevy_app";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_app or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
