{
  # dependencies
  stdenv, cmake, catch2, pkg-config, boost182, zlib, # ... other deps here

  # args
  #   someconfigurationoption ? false
} :

stdenv.mkDerivation (finalattrs:
  {
    name = "cmake-examples-ex14";

    # note: ../flake.nix will override this
    src = fetchGit {
      url = "path/to/somewhere";
      rev = "hashofsomething";
    };

    # run unit tests
    doCheck = true;

    buildInputs = [ cmake pkg-config catch2 boost182 zlib ];
  })
