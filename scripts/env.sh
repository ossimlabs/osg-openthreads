#!/bin/bash
echo *******************************
pushd `dirname $0` >/dev/null
export SCRIPT_DIR=`pwd -P`
popd >/dev/null
echo $SCRIPT_DIR

pushd $SCRIPT_DIR/.. >/dev/null
export OPENTHREADS_HOME="$PWD"
popd >/dev/null

pushd $OPENTHREADS_HOME/../osg >/dev/null
export OSG_ROOT_DIR="$PWD"
popd

echo $OSG_ROOT_DIR

if [ -z "$CMAKE_INSTALL_PREFIX" ]; then
   pushd $OPENTHREADS_HOME/.. >/dev/null
   export CMAKE_INSTALL_PREFIX=$PWD/install
   popd >/dev/null
fi
