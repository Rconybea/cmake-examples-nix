# Introduction

Nix build for cmake-example project: https://github.com/Rconybea/cmake-examples

# Build

Examples are progressive.  Each iteration has its own git branch.
Examples names in {ex1, ex1b, ex1c, ex2 .. ex21, ex21a .. ex21j, ex22}

```
$ nix build -L --print-build-logs .#cmake-examples-ex1
$ nix build -L --print-build-logs .#cmake-examples-ex2
...
$ nix build -L --print-build-logs .#cmake-examples-ex22
```

Can omit `-L --print-build-logs` for terse output

# Update versions

Updates hashes in `flake.lock` it some upstream repo has changed
```
$ nix flake update
```

# Develop

Creates shell containing all the packages in `devShells.${system}`.
On top of existing environment (prepends PATH etc)

```
$ nix develop
```

Hermetic: similar to above,  but discards everything already in user environment
```
$ nix develop -i
```

Hermetic with exceptions: preserve identified environment variables
```
$ nix develop -i --keep HOME --keep TERM --keep DISPLAY --keep SSH_AUTH_SOCK --keep SSH_AGENT_PID --keep CONFIG_SHELL
```

# Links

- https://github.com/vlktomas/nix-examples         Tomas Vlk nix examples
- https://ryantm.github.io/nixpkgs/stdenv/stdenv   nix stdenv
- https://jade.fyi/blog/#flakes-arent-real         Jade Lovelace editorial on flakes+nixpkgs
