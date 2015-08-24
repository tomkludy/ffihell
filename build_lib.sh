#!/bin/sh
cabal configure
cabal build

DIST_LIB=./dist/build
HASKELL_LIB=/Library/Haskell/ghc-7.10.2-x86_64/lib
GHC_FRAMEWORK=/Library/Frameworks/GHC.framework/Versions/7.10.2-x86_64/usr/lib/ghc-7.10.2

ld -r -arch x86_64 -o libffihell.a \
   -force_load ${DIST_LIB}/libHSffihell-0.1.0.0-70CjWiqse6C2Al3vL5a4k7.a \
   -reexport_library ${HASKELL_LIB}/text-1.2.1.3/libHStext-1.2.1.3-1l1AN4I48k37RaQ6fm6CEh.a \
   -reexport_library ${GHC_FRAMEWORK}/bytes_6elQVSg5cWdFrvRnfxTUrH/libHSbytestring-0.10.6.0-6elQVSg5cWdFrvRnfxTUrH.a \
   -reexport_library ${GHC_FRAMEWORK}/deeps_LbCWUlehDDeLxurARKDH5o/libHSdeepseq-1.4.1.1-LbCWUlehDDeLxurARKDH5o.a \
   -reexport_library ${GHC_FRAMEWORK}/binar_IvYoLp9H6Xy3zEH13MmZwd/libHSbinary-0.7.5.0-IvYoLp9H6Xy3zEH13MmZwd.a \
   -reexport_library ${GHC_FRAMEWORK}/base_GDytRqRVSUX7zckgKqJjgw/libHSbase-4.8.1.0-GDytRqRVSUX7zckgKqJjgw.a \
   -reexport_library ${GHC_FRAMEWORK}/integ_2aU3IZNMF9a7mQ0OzsZ0dS/libHSinteger-gmp-1.0.0.0-2aU3IZNMF9a7mQ0OzsZ0dS.a \
   -reexport_library ${GHC_FRAMEWORK}/ghc_JzwEp1oQ8kA7NFNTGk1ho5/libHSghc-7.10.2-JzwEp1oQ8kA7NFNTGk1ho5.a \
   -reexport_library ${GHC_FRAMEWORK}/rts/libHSrts.a \
   -reexport_library ${GHC_FRAMEWORK}/rts/libCffi.a
