{
  description = "TD1 INSA : prise en main de la CLI ROS 2 avec turtlesim";

  inputs.nix.url = "github:gepetto/nix";

  outputs =
    inputs:
    inputs.nix.lib.mkFlakoboros inputs (
      { lib, ... }:
      {
        rosDistros = [ "jazzy" ];
        rosShellDistro = "jazzy";

        extraRosPackages = [
          "ros-core"
          "turtlesim"
          "demo-nodes-py"
          "rqt-graph"
          "rqt-console"
          "ros2bag"
          "ros2launch"
        ];
      }
    );
}
