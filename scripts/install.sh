#!/bin/bash
pushd `dirname $0` >/dev/null
export SCRIPT_DIR=`pwd -P`
popd >/dev/null
. $SCRIPT_DIR/env.sh
cd $OPENTHREADS_HOME/build
make install
