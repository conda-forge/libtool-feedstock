#!/bin/sh

export HELP2MAN=$(which true)
export M4=m4

export AR=$(basename $AR)
export AS=$(basename $AS)
export STRIP=$(basename $STRIP)
export RANLIB=$(basename $RANLIB)
export LTCC=$(basename $CC)
export LD=$(basename $LD)
export CC=$(basename $CC)
export NM=$(basename $NM)

if [[ "$target_platform" == linux* ]]; then
  export OBJDUMP=$(basename $OBJDUMP)
else
  export LIPO=$(basename $LIPO)
  export NMEDIT=$(basename $NMEDIT)
  export OTOOL=$(basename $OTOOL)
fi

./configure --prefix=${PREFIX} --disable-ltdl-install

make -j${CPU_COUNT} ${VERBOSE_AT}
make install
