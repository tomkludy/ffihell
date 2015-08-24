#!/bin/sh
gcc tryit.c -Idist/build -I/Library/Frameworks/GHC.framework/Versions/7.10.2-x86_64/usr/lib/ghc-7.10.2/include -Ldist/build -lffihell -liconv -lm -ldl -o dist/build/tryit
