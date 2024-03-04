{
  # dependencies
  stdenv, cmake,  # ... other deps here

  # args

  #   attrset for fetching source code.
  #    { type, owner, repo, ref }
  #
  #   e.g. type="github", owner="rconybea", repo="cmake-examples", ref="ex1"
  #
  #   see [[../flake.nix]]
  #
#  cmake-examples-ex1b-path,

  # someconfigurationoption ? false
} :

stdenv.mkDerivation (finalattrs:
  {
    name = "cmake-examples-ex1b";

    src = fetchGit {};

#    src = cmake-examples-ex1b-path;

#    src = (fetchGit {
#      url = "https://github.com/rconybea/cmake-examples";
#      #ref = "ex1";
#      #rev = "c0472c9d7e4d2c53bfb977d3182380832fe96645";
#    });

    buildInputs = [ cmake ];

    installPhase = ''
      mkdir -p $out
      echo 'This project intentionally has no install phase'
    '';
  })
