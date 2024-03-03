{
  # dependencies
  stdenv, cmake, catch2, pkg-config, python3Packages, boost, zlib, # ... other deps here

  # args
  #   someconfigurationoption ? false
  pybind11 ? python3Packages.pybind11
} :

stdenv.mkDerivation (finalattrs:
  {
    name = "cmake-examples-ex21b";

    # note: ../flake.nix will override this
    src = fetchGit {
      url = "path/to/somewhere";
      rev = "hashofsomething";
    };

    # run unit tests
    doCheck = true;

    buildInputs = [ cmake pkg-config pybind11 catch2 boost zlib ];
  })
