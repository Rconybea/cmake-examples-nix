{
  # dependencies
  stdenv, doxygen, cmake, catch2, pkg-config, python3Packages, boost, zlib, # ... other deps here

  # args
  #   someconfigurationoption ? false
  pybind11 ? python3Packages.pybind11,
  sphinx ? python3Packages.sphinx
} :

stdenv.mkDerivation (finalattrs:
  {
    name = "cmake-examples-ex22";

    # note: ../flake.nix will override this
    src = fetchGit {
      url = "path/to/somewhere";
      rev = "hashofsomething";
    };

    # run unit tests
    doCheck = true;

    buildInputs = [ cmake pkg-config pybind11 sphinx doxygen catch2 boost zlib ];
  })
