{lib, ...}: let
  inherit (lib) types;
in {
  options = {
    region = lib.mkOption {
      type = types.enum ["us-east-1" "us-east-2" "eu-central-1"];
      description = "Region of the deployment";
    };

    network = lib.mkOption {
      type = types.enum ["mainnet" "preprod" "preview" "sanchonet"];
      description = "Network of the deployment";
    };
  };
}
