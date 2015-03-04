#!/bin/bash
export LASNLESC_HOME=
export LIBLAS_HOME=
export LASZIP_HOME=
export BOOST_HOME=
export BOOST_ROOT=

export CMAKE_MODULE_PATH=$LIBLAS_HOME:${CMAKE_MODULE_PATH}
export LD_RUN_PATH=$BOOST_HOME/lib:$LASZIP_HOME/lib:$LIBLAS_HOME/lib:$LASNLESC_HOME/lib:$LD_RUN_PATH
export LD_LIBRARY_PATH=$BOOST_HOME/lib:$LASZIP_HOME/lib:$LIBLAS_HOME/lib:$LASNLESC_HOME/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$BOOST_HOME/lib:$LASZIP_HOME/lib:$LIBLAS_HOME/lib:$LASNLESC_HOME/lib:$LIBRARY_PATH
export C_INCLUDE_PATH=$LIBLAS_HOME/include/liblas/capi:${C_INCLUDE_PATH}

export LDFLAGS="${LDFLAGS} -L$BOOST_HOME/lib -L$LIBLAS_HOME/lib -L$LASZIP_HOME/lib -llas_c -llaszip"