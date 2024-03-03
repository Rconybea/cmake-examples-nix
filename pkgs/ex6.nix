{
  # dependencies
  stdenv, cmake, pkg-config, boost182, zlib, # ... other deps here

  # args
  #   someconfigurationoption ? false
} :

stdenv.mkDerivation (finalattrs:
  {
    name = "cmake-examples-ex6";

    # note: ../flake.nix will override this
    src = fetchGit {
      url = "path/to/somewhere";
      rev = "hashofsomething";
    };

    buildInputs = [ cmake pkg-config boost182 zlib ];

    installPhase = ''
      mkdir -p $out
      echo 'This project intentionally has no install phase'
    '';
  })