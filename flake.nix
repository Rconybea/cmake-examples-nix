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
  inputs.cmake-examples-path = { type = "github"; owner = "Rconybea"; repo = "xo-cmake";       flake = false; ref = "ex21j" };
  #inputs.xo-cmake-path       = { type = "github"; owner = "Rconybea"; repo = "xo-cmake";       flake = false; };
  #inputs.indentlog-path      = { type = "github"; owner = "Rconybea"; repo = "indentlog";      flake = false; };
  #inputs.refcnt-path         = { type = "github"; owner = "Rconybea"; repo = "refcnt";         flake = false; };
  #inputs.subsys-path         = { type = "github"; owner = "Rconybea"; repo = "subsys";         flake = false; };
  #inputs.reflect-path        = { type = "github"; owner = "Rconybea"; repo = "reflect";        flake = false; };
  #inputs.randomgen-path      = { type = "github"; owner = "Rconybea"; repo = "randomgen";      flake = false; };
  #inputs.xo-ordinaltree-path = { type = "github"; owner = "Rconybea"; repo = "xo-ordinaltree"; flake = false; };
  #inputs.xo-pyutil-path      = { type = "github"; owner = "Rconybea"; repo = "xo-pyutil";      flake = false; };
  #inputs.xo-pyreflect-path   = { type = "github"; owner = "Rconybea"; repo = "xo-pyreflect";   flake = false; };
  #inputs.xo-printjson-path   = { type = "github"; owner = "Rconybea"; repo = "xo-printjson";   flake = false; };
  #inputs.xo-pyprintjson-path = { type = "github"; owner = "Rconybea"; repo = "xo-pyprintjson"; flake = false; };
  #inputs.xo-callback-path    = { type = "github"; owner = "Rconybea"; repo = "xo-callback";    flake = false; };
  #inputs.xo-webutil-path     = { type = "github"; owner = "Rconybea"; repo = "xo-webutil";     flake = false; };
  #inputs.xo-pywebutil-path   = { type = "github"; owner = "Rconybea"; repo = "xo-pywebutil";   flake = false; };
  #inputs.xo-reactor-path     = { type = "github"; owner = "Rconybea"; repo = "xo-reactor";     flake = false; };
  #inputs.xo-pyreactor-path   = { type = "github"; owner = "Rconybea"; repo = "xo-pyreactor";   flake = false; };
  #inputs.xo-simulator-path   = { type = "github"; owner = "Rconybea"; repo = "xo-simulator";   flake = false; };
  #inputs.xo-process-path     = { type = "github"; owner = "Rconybea"; repo = "xo-process";     flake = false; };

  outputs = { self, nixpkgs, flake-utils,
              cmake-examples-path
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

        cmake_examples_deriv = env.mkDerivation {
          name = "cmake-examples"; version = "1.0"; src = cmake-examples-path;
          nativeBuildInputs = [ pkgs.cmake ];

#        xo_pkgs = self.packages.${system};
#        xo_cmake_deriv = env.mkDerivation {
#          name = "xo-cmake"; version = "1.0"; src = xo-cmake-path;
#          nativeBuildInputs = [ pkgs.cmake ];
#        };
#        # using this in CMAKE_MODULE_PATH
#        xo_cmake_dir = "${self.packages.${system}.xo_cmake}/share/cmake";
#
#        indentlog_deriv = env.mkDerivation {
#          name = "indentlog"; version = "1.0"; src = indentlog-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ ];
#        };
#
#        refcnt_deriv = env.mkDerivation {
#          name = "recnt"; version = "1.0"; src = refcnt-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ xo_pkgs.indentlog ];
#        };
#
#        subsys_deriv = env.mkDerivation {
#          name = "subsys"; version = "1.0"; src = subsys-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ ];
#        };
#
#        randomgen_deriv = env.mkDerivation {
#          name = "randomgen"; version = "1.0"; src = randomgen-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake ];
#          propagatedBuildInputs = [ xo_pkgs.indentlog ];
#        };
#
#        xo_ordinaltree_deriv = env.mkDerivation {
#          name = "xo-ordinaltree"; version = "1.0"; src = xo-ordinaltree-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 xo_pkgs.randomgen ];
#          propagatedBuildInputs = [ xo_pkgs.refcnt ];
#        };
#
#        xo_pyutil_deriv = env.mkDerivation {
#          name = "xo-pyutil"; version = "1.0"; src = xo-pyutil-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          # all python bindings need to build vs the same python major.minor version
#          propagatedBuildInputs = [ pkgs.python311Full pkgs.python311Packages.pybind11 ];
#        };
#
#        reflect_deriv = env.mkDerivation {
#          name = "reflect"; version = "1.0"; src = reflect-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ xo_pkgs.subsys xo_pkgs.refcnt ];
#        };
#
#        xo_pyreflect_deriv = env.mkDerivation {
#          name = "xo-pyreflect"; version = "1.0"; src = xo-pyreflect-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2
#                                xo_pkgs.refcnt xo_pkgs.xo_pyutil xo_pkgs.reflect ];
#          propagatedBuildInputs = [ ];
#        };
#
#        xo_printjson_deriv = env.mkDerivation {
#          name = "xo-printjson"; version = "1.0"; src = xo-printjson-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ xo_pkgs.reflect ];
#        };
#
#        xo_pyprintjson_deriv = env.mkDerivation {
#          name = "xo-pyprintjson"; version = "1.0"; src = xo-pyprintjson-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 xo_pkgs.xo_pyutil ];
#          propagatedBuildInputs = [ xo_pkgs.xo_printjson xo_pkgs.xo_pyreflect ];
#        };
#
#        xo_callback_deriv = env.mkDerivation {
#          name = "xo-callback"; version = "1.0"; src = xo-callback-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ xo_pkgs.reflect ];
#        };
#
#        xo_webutil_deriv = env.mkDerivation {
#          name = "xo-webutil"; version = "1.0"; src = xo-webutil-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ xo_pkgs.reflect xo_pkgs.xo_callback ];
#        };
#
#        xo_pywebutil_deriv = env.mkDerivation {
#          name = "xo-pywebutil"; version = "1.0"; src = xo-pywebutil-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 xo_pkgs.xo_pyutil ];
#          propagatedBuildInputs = [ xo_pkgs.xo_webutil ];
#        };
#
#        xo_reactor_deriv = env.mkDerivation {
#          name = "xo-reactor"; version = "1.0"; src = xo-reactor-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 xo_pkgs.randomgen ];
#          propagatedBuildInputs = [ xo_pkgs.xo_webutil
#                                    xo_pkgs.xo_printjson
#                                    xo_pkgs.xo_ordinaltree ];
#        };
#
#        xo_pyreactor_deriv = env.mkDerivation {
#          name = "xo-pyreactor"; version = "1.0"; src = xo-pyreactor-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ xo_pkgs.xo_reactor
#                                    xo_pkgs.xo_pyutil
#                                    xo_pkgs.xo_pyreflect
#                                    xo_pkgs.xo_pyprintjson ];
#        };
#
#        xo_simulator_deriv = env.mkDerivation {
#          name = "xo-simulator"; version = "1.0"; src = xo-simulator-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ xo_pkgs.xo_reactor ];
#        };
#
#        xo_process_deriv = env.mkDerivation {
#          name = "xo-process"; version = "1.0"; src = xo-process-path;
#          cmakeFlags = ["-DCMAKE_MODULE_PATH=${xo_cmake_dir}"];
#          nativeBuildInputs = [ pkgs.cmake pkgs.catch2 ];
#          propagatedBuildInputs = [ xo_pkgs.xo_simulator
#                                    xo_pkgs.randomgen ];
#        };

      in
        {
          packages = rec {
            # member packages.foo appears as xo_pkgs.foo
            # (xo_pkgs adds ${system} qualifier)

            cmake_examples = cmake_examples_deriv;
#            xo_cmake = xo_cmake_deriv;
#            indentlog = indentlog_deriv;
#            refcnt = refcnt_deriv;
#            subsys = subsys_deriv;
#            randomgen = randomgen_deriv;
#            xo_ordinaltree = xo_ordinaltree_deriv;
#            reflect = reflect_deriv;
#            xo_pyutil = xo_pyutil_deriv;
#            xo_pyreflect = xo_pyreflect_deriv;
#            xo_printjson = xo_printjson_deriv;
#            xo_pyprintjson = xo_pyprintjson_deriv;
#            xo_callback = xo_callback_deriv;
#            xo_webutil = xo_webutil_deriv;
#            xo_pywebutil = xo_pywebutil_deriv;
#            xo_reactor = xo_reactor_deriv;
#            xo_pyreactor = xo_pyreactor_deriv;
#            xo_simulator = xo_simulator_deriv;
#            xo_process = xo_process_deriv;

#            hello = pkgs.hello;
            default = cmake_examples;
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
