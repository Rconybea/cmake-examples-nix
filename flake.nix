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

  flake-utils.lib.eachDefaultSystem
    (system :
      let
        # note: .clang16Stdenv appears to be latest available as of feb2024
        env = (if system == "aarch64-linux" then pkgs.clang16Stdenv else pkgs.stdenv);

        # aarch64-darwin aarch64-linux x86_64-darwin:
        #env = pkgs.clang16Stdenv;

        pkgs = nixpkgs.legacyPackages.${system};

        # .packages introduced below

        our_pkgs = self.packages.${system};

        empty_install_phase = ''
          mkdir -p $out
          echo 'No install phase!'
        '';

        cmake-examples-version = "1.0";

        cmake-examples-ex5-deriv = env.mkDerivation {
          name = "cmake-examples-ex5"; version = cmake-examples-version;
          src = cmake-examples-ex5-path;
          installPhase = empty_install_phase;
          nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.boost182 pkgs.zlib ];
        };

      in
        {
          packages = rec {
            # member packages.foo appears as xo_pkgs.foo
            # (xo_pkgs adds ${system} qualifier)

            cmake-examples-ex1 = pkgs.callPackage ./pkgs/ex1.nix { cmake-examples-ex1-path = cmake-examples-ex1-path; };

#            cmake-examples-ex1 = env.mkDerivation {
#              name = "cmake-examples-ex1"; version = cmake-examples-version;
#              src = cmake-examples-ex1-path;
#              installPhase = empty_install_phase;
#              nativeBuildInputs = [ pkgs.cmake ];
#            };

            # reminder: can't chain deriv deps here via propagatedBuildInputs etc.
            #           That would be suitable if ex{n+1} depended on ex{n} _output_

            cmake-examples-ex1b = pkgs.callPackage ./pkgs/ex1b.nix { cmake-examples-ex1b-path = cmake-examples-ex1b-path; };

#            cmake-examples-ex1b = env.mkDerivation {
#              name = "cmake-examples-ex1b"; version = cmake-examples-version;
#              src = cmake-examples-ex1b-path;
#              installPhase = empty_install_phase;
#              nativeBuildInputs = [ pkgs.cmake ];
#            };

            cmake-examples-ex1c = env.mkDerivation {
              name = "cmake-examples-ex1c"; version = cmake-examples-version;
              src = cmake-examples-ex1c-path;
              installPhase = empty_install_phase;
              nativeBuildInputs = [ pkgs.cmake ];   # don't do this -- breaks cross-compilation
            };

            cmake-examples-ex2 = env.mkDerivation {
              name = "cmake-examples-ex2"; version = cmake-examples-version;
              src = cmake-examples-ex2-path;
              installPhase = empty_install_phase;
              nativeBuildInputs = [ pkgs.cmake ];
            };

            # pkgs.boost182 current asof feb2024
            cmake-examples-ex3 = env.mkDerivation {
              name = "cmake-examples-ex3"; version = cmake-examples-version;
              src = cmake-examples-ex3-path;
              installPhase = empty_install_phase;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.boost182 ];
            };

            cmake-examples-ex4 = env.mkDerivation {
              name = "cmake-examples-ex4"; version = cmake-examples-version;
              src = cmake-examples-ex4-path;
              installPhase = empty_install_phase;
              propagatedBuildInputs = [ our_pkgs.cmake-examples-ex3 ];
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex5 = env.mkDerivation {
              name = "cmake-examples-ex5"; version = cmake-examples-version;
              src = cmake-examples-ex5-path;
              installPhase = empty_install_phase;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.boost182 pkgs.zlib ];
            };

            # first example with non-trivial install step -> non-trivial result/ dir after building
            #
            cmake-examples-ex6 = env.mkDerivation {
              name = "cmake-examples-ex6"; version = cmake-examples-version;
              src = cmake-examples-ex6-path;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex7 = env.mkDerivation {
              name = "cmake-examples-ex7"; version = cmake-examples-version;
              src = cmake-examples-ex7-path;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex8 = env.mkDerivation {
              name = "cmake-examples-ex8"; version = cmake-examples-version;
              src = cmake-examples-ex8-path;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex9 = env.mkDerivation {
              name = "cmake-examples-ex9"; version = cmake-examples-version;
              src = cmake-examples-ex9-path;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex10 = env.mkDerivation {
              name = "cmake-examples-ex10"; version = cmake-examples-version;
              src = cmake-examples-ex10-path;
              doCheck = true;   # run unit tests starting with cmake-examples-ex10
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex11 = env.mkDerivation {
              name = "cmake-examples-ex11"; version = cmake-examples-version;
              src = cmake-examples-ex11-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex12 = env.mkDerivation {
              name = "cmake-examples-ex12"; version = cmake-examples-version;
              src = cmake-examples-ex12-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex13 = env.mkDerivation {
              name = "cmake-examples-ex13"; version = cmake-examples-version;
              src = cmake-examples-ex13-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex14 = env.mkDerivation {
              name = "cmake-examples-ex14"; version = cmake-examples-version;
              src = cmake-examples-ex14-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex15 = env.mkDerivation {
              name = "cmake-examples-ex15"; version = cmake-examples-version;
              src = cmake-examples-ex15-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex16 = env.mkDerivation {
              name = "cmake-examples-ex16"; version = cmake-examples-version;
              src = cmake-examples-ex16-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex17 = env.mkDerivation {
              name = "cmake-examples-ex17"; version = cmake-examples-version;
              src = cmake-examples-ex17-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex18 = env.mkDerivation {
              name = "cmake-examples-ex18"; version = cmake-examples-version;
              src = cmake-examples-ex18-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex19 = env.mkDerivation {
              name = "cmake-examples-ex19"; version = cmake-examples-version;
              src = cmake-examples-ex19-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex20 = env.mkDerivation {
              name = "cmake-examples-ex20"; version = cmake-examples-version;
              src = cmake-examples-ex20-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21 = env.mkDerivation {
              name = "cmake-examples-ex21"; version = cmake-examples-version;
              src = cmake-examples-ex21-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21a = env.mkDerivation {
              name = "cmake-examples-ex21a"; version = cmake-examples-version;
              src = cmake-examples-ex21a-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21b = env.mkDerivation {
              name = "cmake-examples-ex21b"; version = cmake-examples-version;
              src = cmake-examples-ex21b-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21c = env.mkDerivation {
              name = "cmake-examples-ex21c"; version = cmake-examples-version;
              src = cmake-examples-ex21c-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21d = env.mkDerivation {
              name = "cmake-examples-ex21d"; version = cmake-examples-version;
              src = cmake-examples-ex21d-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21e = env.mkDerivation {
              name = "cmake-examples-ex21e"; version = cmake-examples-version;
              src = cmake-examples-ex21e-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21f = env.mkDerivation {
              name = "cmake-examples-ex21f"; version = cmake-examples-version;
              src = cmake-examples-ex21f-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21g = env.mkDerivation {
              name = "cmake-examples-ex21g"; version = cmake-examples-version;
              src = cmake-examples-ex21g-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21h = env.mkDerivation {
              name = "cmake-examples-ex21h"; version = cmake-examples-version;
              src = cmake-examples-ex21h-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21i = env.mkDerivation {
              name = "cmake-examples-ex21i"; version = cmake-examples-version;
              src = cmake-examples-ex21i-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

            cmake-examples-ex21j = env.mkDerivation {
              name = "cmake-examples-ex21j"; version = cmake-examples-version;
              src = cmake-examples-ex21j-path;
              doCheck = true;
              nativeBuildInputs = [ pkgs.python311Packages.pybind11 pkgs.cmake pkgs.pkg-config pkgs.catch2 pkgs.boost182 pkgs.zlib ];
            };

#            hello = pkgs.hello;
            default = cmake-examples-ex12;
          };

          devShells = {
            default = pkgs.mkShell.override
              { stdenv = env; }

              { packages = [ pkgs.python311Full
                             pkgs.python311Packages.pybind11
                             pkgs.python311Packages.coverage
                             pkgs.python311Packages.sphinx

                             # generic dev stack
                             pkgs.llvmPackages_16.clang-unwrapped
                             pkgs.emacs29
                             #pkgs.mu
                             #pkgs.emacsPackages.mu4easy
                             pkgs.notmuch
                             pkgs.emacsPackages.notmuch
                             #pkgs.pixelorama
                             pkgs.inconsolata-lgc
                             pkgs.sphinx
                             pkgs.ditaa
                             pkgs.semgrep
                             pkgs.ripgrep
                             pkgs.git
                             pkgs.openssh
                             pkgs.cmake
                             pkgs.gdb
                             pkgs.which
                             pkgs.man
                             pkgs.man-pages
                             pkgs.less
                             pkgs.tree
                             pkgs.nix-tree
                             pkgs.lcov

                             # xo-specific dependencies (also see cmake-examples)
                             pkgs.catch2
                             pkgs.libwebsockets
                             pkgs.openssl
                             pkgs.jsoncpp
                             pkgs.eigen
                             pkgs.boost182
                             pkgs.pkg-config
                             pkgs.zlib
                           ];
              };
          };

          apps = rec {
            #xo_cmake = flake-utils.lib.mkApp { drv = xo_pkgs.xo_cmake; };
            #indentlog = flake-utils.lib.mkApp { drv = xo_pkgs.indentlog; };
            #refcnt = flake-utils.lib.mkApp { drv = xo_pkgs.refcnt; }
            #subsys = flake-utils.lib.mkApp { drv = xo_pkgs.subsys; };

            #default = subsys;
            #hello = flake-utils.lib.mkApp { drv = xo_pkgs.hello; };
            #default = hello;
          };
        }
    );
}
