#!/bin/bash
pushd `dirname $0` >/dev/null
export SCRIPT_DIR=`pwd -P`
popd >/dev/null
. $SCRIPT_DIR/env.sh

if [ ! -d $OPENTHREADS_HOME/build ]; then
   mkdir -p $OPENTHREADS_HOME/build
fi

cd $OPENTHREADS_HOME/build
cmake .. -DCMAKE_INSTALL_PREFIX=$CMAKE_INSTALL_PREFIX
make

