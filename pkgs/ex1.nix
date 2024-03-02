{
  # dependencies
  stdenv, fetchgit, cmake # ... other deps here

  # args

  # someconfigurationoption ? false
} :

stdenv.mkDerivation (finalattrs:
  {
    name = "cmake-examples-ex1";

    src = (fetchGit {
      url = "https://github.com/rconybea/cmake-examples";
      ref = "ex1";
      rev = "c0472c9d7e4d2c53bfb977d3182380832fe96645";
    });

    buildInputs = [ cmake ];

    installPhase = ''
      mkdir -p $out
      echo 'This project intentionally has no install phase'
    '';
  })
