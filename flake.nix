{
  description = "Flake for cmake-examples project";

  # to get specific hash:
  # 1. $ cd ~/proj/nixpkgs
  # 2. $ git checkout release-23.05
  # 3. $ git fetch
  # 4. $ git pull
  # 5. $ git log -1
  #    take this hash,  then substitue for ${hash} in:
  #      inputs.nixpkgs.url = "https://github.com/NixOS/nixpkgs/archive/${hash}.tar.gz";
  #    below
  #inputs.nixpkgs.url = "https://github.com/NixOS/nixpkgs/archive/9a333eaa80901efe01df07eade2c16d183761fa3.tar.gz";

  # as sbove but instead of {release-23.05} use {release-23.11}
  #   gcc -> 12.3.0
  #   python -> 3.11.6
  #
  inputs.nixpkgs.url = "https://github.com/NixOS/nixpkgs/archive/4dd376f7943c64b522224a548d9cab5627b4d9d6.tar.gz";

  # inputs.nixpkgs.url = "https://github.com/NixOS/nixpkgs/archive/fac3684647cc9d6dfb2a39f3f4b7cf5fc89c96b6.tar.gz"; # working as of 8feb2024
  # fac3684647.. asof 17oct2023
  # instead of
  #   inputs.nixpkgs.url = "github:nixos/nixpkgs/23.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  # branches:
  #  ex1 ex1b ex1c
  #  ex2 .. ex21
  #  ex21a .. ex21j
  #  ex22
  #


  inputs.cmake-examples-ex1-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex1"; };
  inputs.cmake-examples-ex1b-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex1b"; };
  inputs.cmake-examples-ex1c-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex1c"; };
  inputs.cmake-examples-ex2-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex2"; };
  inputs.cmake-examples-ex3-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex3"; };
  inputs.cmake-examples-ex4-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex4"; };
  inputs.cmake-examples-ex5-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex5"; };
  inputs.cmake-examples-ex6-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex6"; };
  inputs.cmake-examples-ex7-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex7"; };
  inputs.cmake-examples-ex8-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex8"; };
  inputs.cmake-examples-ex9-path   = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref =  "ex9"; };
  inputs.cmake-examples-ex10-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex10"; };
  inputs.cmake-examples-ex11-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex11"; };
  inputs.cmake-examples-ex12-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex12"; };
  inputs.cmake-examples-ex13-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex13"; };
  inputs.cmake-examples-ex14-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex14"; };
  inputs.cmake-examples-ex15-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex15"; };
  inputs.cmake-examples-ex16-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex16"; };
  inputs.cmake-examples-ex17-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex17"; };
  inputs.cmake-examples-ex18-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex18"; };
  inputs.cmake-examples-ex19-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex19"; };
  inputs.cmake-examples-ex20-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex20"; };
  inputs.cmake-examples-ex21-path  = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21"; };
  inputs.cmake-examples-ex21a-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21a"; };
  inputs.cmake-examples-ex21b-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21b"; };
  inputs.cmake-examples-ex21c-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21c"; };
  inputs.cmake-examples-ex21d-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21d"; };
  inputs.cmake-examples-ex21e-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21e"; };
  inputs.cmake-examples-ex21f-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21f"; };
  inputs.cmake-examples-ex21g-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21g"; };
  inputs.cmake-examples-ex21h-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21h"; };
  inputs.cmake-examples-ex21i-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21i"; };
  inputs.cmake-examples-ex21j-path = { type = "github"; owner = "Rconybea"; repo = "cmake-examples";  flake = false; ref = "ex21j"; };

  outputs = { self,
              nixpkgs,
              flake-utils,
              cmake-examples-ex1-path,
              cmake-examples-ex1b-path,
              cmake-examples-ex1c-path,
              cmake-examples-ex2-path,
              cmake-examples-ex3-path,
              cmake-examples-ex4-path,
              cmake-examples-ex5-path,
              cmake-examples-ex6-path,
              cmake-examples-ex7-path,
              cmake-examples-ex8-path,
              cmake-examples-ex9-path,
              cmake-examples-ex10-path,
              cmake-examples-ex11-path,
              cmake-examples-ex12-path,
              cmake-examples-ex13-path,
              cmake-examples-ex14-path,
              cmake-examples-ex15-path,
              cmake-examples-ex16-path,
              cmake-examples-ex17-path,
              cmake-examples-ex18-path,
              cmake-examples-ex19-path,
              cmake-examples-ex20-path,
              cmake-examples-ex21-path,
              cmake-examples-ex21a-path,
              cmake-examples-ex21b-path,
              cmake-examples-ex21c-path,
              cmake-examples-ex21d-path,
              cmake-examples-ex21e-path,
              cmake-examples-ex21f-path,
              cmake-examples-ex21g-path,
              cmake-examples-ex21h-path,
              cmake-examples-ex21i-path,
              cmake-examples-ex21j-path,
            }:

              let
                out = system :
                  let
                    pkgs = nixpkgs.legacyPackages.${system};
                    appliedOverlay = self.overlays.default pkgs pkgs;
                  in
                    {
                      # reminder:
                      # 'packages' comprises the output of this flake;
                      # each defn invokes a build
                      #   ./pkgs/$example.nix
                      # using
                      #   cmake-examples-$example-path
                      # above for source code

                      packages.cmake-examples-ex1b  = appliedOverlay.cmake-examples-ex1b;
                      packages.cmake-examples-ex1c  = appliedOverlay.cmake-examples-ex1c;
                      packages.cmake-examples-ex2   = appliedOverlay.cmake-examples-ex2;
                      packages.cmake-examples-ex3   = appliedOverlay.cmake-examples-ex3;
                      packages.cmake-examples-ex4   = appliedOverlay.cmake-examples-ex4;
                      packages.cmake-examples-ex5   = appliedOverlay.cmake-examples-ex5;
                      packages.cmake-examples-ex6   = appliedOverlay.cmake-examples-ex6;
                      packages.cmake-examples-ex7   = appliedOverlay.cmake-examples-ex7;
                      packages.cmake-examples-ex8   = appliedOverlay.cmake-examples-ex8;
                      packages.cmake-examples-ex9   = appliedOverlay.cmake-examples-ex9;
                      packages.cmake-examples-ex10  = appliedOverlay.cmake-examples-ex10;
                      packages.cmake-examples-ex11  = appliedOverlay.cmake-examples-ex11;
                      packages.cmake-examples-ex12  = appliedOverlay.cmake-examples-ex12;
                      packages.cmake-examples-ex13  = appliedOverlay.cmake-examples-ex13;
                      packages.cmake-examples-ex14  = appliedOverlay.cmake-examples-ex14;
                      packages.cmake-examples-ex15  = appliedOverlay.cmake-examples-ex15;
                      packages.cmake-examples-ex16  = appliedOverlay.cmake-examples-ex16;
                      packages.cmake-examples-ex17  = appliedOverlay.cmake-examples-ex17;
                      packages.cmake-examples-ex18  = appliedOverlay.cmake-examples-ex18;
                      packages.cmake-examples-ex19  = appliedOverlay.cmake-examples-ex19;
                      packages.cmake-examples-ex20  = appliedOverlay.cmake-examples-ex20;
                      packages.cmake-examples-ex21  = appliedOverlay.cmake-examples-ex21;
                      packages.cmake-examples-ex21a = appliedOverlay.cmake-examples-ex21a;
                      packages.cmake-examples-ex21b = appliedOverlay.cmake-examples-ex21b;
                      packages.cmake-examples-ex21c = appliedOverlay.cmake-examples-ex21c;
                      packages.cmake-examples-ex21d = appliedOverlay.cmake-examples-ex21d;
                      packages.cmake-examples-ex21e = appliedOverlay.cmake-examples-ex21e;
                      packages.cmake-examples-ex21f = appliedOverlay.cmake-examples-ex21f;
                      packages.cmake-examples-ex21g = appliedOverlay.cmake-examples-ex21g;
                      packages.cmake-examples-ex21h = appliedOverlay.cmake-examples-ex21h;
                      packages.cmake-examples-ex21i = appliedOverlay.cmake-examples-ex21i;
                      packages.cmake-examples-ex21j = appliedOverlay.cmake-examples-ex21j;
                    };
              in
                flake-utils.lib.eachDefaultSystem out // {
                  # Using overlay to introduce local packages (cmake-examples-ex1b etc.).
                  # These packages are not present in nixpkgs
                  #
                  overlays.default = final: prev: (
                    let
                      boost = prev.boost182;
                      python3Packages = prev.python311Packages;
                      pybind11 = python3Packages.pybind11;

                      extras2 = { boost = boost; python3Packages = python3Packages; pybind11 = pybind11; };

                    in
                      {
                        #cmake-examples-ex1b = prev.cmake-examples-ex1b.overrideAttrs (prev: {src = cmake-examples-ex1b-path; });

                        # in the below:
                        # the .overrideAttrs() call applies to derivation-inputs,  i.e. the attribute set passed to stdenv.mkDerivation()
                        #

                        cmake-examples-ex1b =
                          (prev.callPackage ./pkgs/ex1b.nix {}).overrideAttrs
                            (old: { src = cmake-examples-ex1b-path; });

                        cmake-examples-ex1c =
                          (prev.callPackage ./pkgs/ex1c.nix {}).overrideAttrs
                            (old: { src = cmake-examples-ex1c-path; });

                        cmake-examples-ex2 =
                          (prev.callPackage ./pkgs/ex2.nix {}).overrideAttrs
                            (old: { src = cmake-examples-ex2-path; });

                        cmake-examples-ex3 =
                          (prev.callPackage ./pkgs/ex3.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex3-path; });

                        cmake-examples-ex4 =
                          (prev.callPackage ./pkgs/ex4.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex4-path; });

                        cmake-examples-ex5 =
                          (prev.callPackage ./pkgs/ex5.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex5-path; });

                        cmake-examples-ex6 =
                          (prev.callPackage ./pkgs/ex6.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex6-path; });

                        cmake-examples-ex7 =
                          (prev.callPackage ./pkgs/ex7.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex7-path; });

                        cmake-examples-ex8 =
                          (prev.callPackage ./pkgs/ex8.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex8-path; });

                        cmake-examples-ex9 =
                          (prev.callPackage ./pkgs/ex9.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex9-path; });

                        cmake-examples-ex10 =
                          (prev.callPackage ./pkgs/ex10.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex10-path; });

                        cmake-examples-ex11 =
                          (prev.callPackage ./pkgs/ex11.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex11-path; });

                        cmake-examples-ex12 =
                          (prev.callPackage ./pkgs/ex12.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex12-path; });

                        cmake-examples-ex13 =
                          (prev.callPackage ./pkgs/ex13.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex13-path; });

                        cmake-examples-ex14 =
                          (prev.callPackage ./pkgs/ex14.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex14-path; });

                        cmake-examples-ex15 =
                          (prev.callPackage ./pkgs/ex15.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex15-path; });

                        cmake-examples-ex16 =
                          (prev.callPackage ./pkgs/ex16.nix { boost = boost; }).overrideAttrs
                            (old: { src = cmake-examples-ex16-path; });

                        cmake-examples-ex17 =
                          (prev.callPackage ./pkgs/ex17.nix { boost = boost; python3Packages = python3Packages; pybind11 = pybind11; }).overrideAttrs
                            (old: { src = cmake-examples-ex17-path; });

                        cmake-examples-ex18 =
                          (prev.callPackage ./pkgs/ex18.nix { boost = boost; python3Packages = python3Packages; pybind11 = pybind11; }).overrideAttrs
                            (old: { src = cmake-examples-ex18-path; });

                        cmake-examples-ex19 =
                          (prev.callPackage ./pkgs/ex19.nix extras2).overrideAttrs
                            (old: { src = cmake-examples-ex19-path; });

                        cmake-examples-ex20 =
                          (prev.callPackage ./pkgs/ex20.nix extras2).overrideAttrs
                            (old: { src = cmake-examples-ex20-path; });

                        cmake-examples-ex21 =
                          (prev.callPackage ./pkgs/ex21.nix extras2).overrideAttrs
                            (old: { src = cmake-examples-ex21-path; });

                        cmake-examples-ex21a =
                          (prev.callPackage ./pkgs/ex21a.nix extras2).overrideAttrs
                            (old: { src = cmake-examples-ex21a-path; });

                        cmake-examples-ex21b =
                          (prev.callPackage ./pkgs/ex21b.nix extras2).overrideAttrs
                            (old: { src = cmake-examples-ex21b-path; });

                        cmake-examples-ex21c =
                          (prev.callPackage ./pkgs/ex21c.nix { boost = boost; python3Packages = prev.python311Packages; }).overrideAttrs
                            (old: { src = cmake-examples-ex21c-path; });

                        cmake-examples-ex21d =
                          (prev.callPackage ./pkgs/ex21d.nix { boost = boost; python3Packages = prev.python311Packages; }).overrideAttrs
                            (old: { src = cmake-examples-ex21d-path; });

                        cmake-examples-ex21e =
                          (prev.callPackage ./pkgs/ex21e.nix { boost = boost; python3Packages = prev.python311Packages; }).overrideAttrs
                            (old: { src = cmake-examples-ex21e-path; });

                        cmake-examples-ex21f =
                          (prev.callPackage ./pkgs/ex21f.nix { boost = boost; python3Packages = prev.python311Packages; }).overrideAttrs
                            (old: { src = cmake-examples-ex21f-path; });

                        cmake-examples-ex21g =
                          (prev.callPackage ./pkgs/ex21g.nix { boost = boost; python3Packages = prev.python311Packages; }).overrideAttrs
                            (old: { src = cmake-examples-ex21g-path; });

                        cmake-examples-ex21h =
                          (prev.callPackage ./pkgs/ex21h.nix { boost = boost; python3Packages = prev.python311Packages; }).overrideAttrs
                            (old: { src = cmake-examples-ex21h-path; });

                        cmake-examples-ex21i =
                          (prev.callPackage ./pkgs/ex21i.nix { boost = boost; python3Packages = prev.python311Packages; }).overrideAttrs
                            (old: { src = cmake-examples-ex21i-path; });

                        cmake-examples-ex21j =
                          (prev.callPackage ./pkgs/ex21j.nix { boost = boost; python3Packages = prev.python311Packages; }).overrideAttrs
                            (old: { src = cmake-examples-ex21j-path; });

                      });
                };
}
