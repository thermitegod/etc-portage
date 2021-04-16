# building llvm with llvm

## bootstrap

- install previous version of llvm/clang
- set as the default compiler
- see next section

## llvm major upgrade

- build new llvm and supporting packages, but not clang and lld, with old llvm/clang toolchain.
- build new clang, then build new lld. this is because lld is not slotted and old llvm toolchain still needs it to work
- switch to new llvm/clang in make.conf
- rebuild new llvm/clang with itself, optional
- rebuild @world, do not need to rebuild packages build with gcc,

## llvm minor upgrade

- not complex because no api/abi break
- build new llvm/clang version
- rebuild @world, do not need to rebuild packages build with gcc


