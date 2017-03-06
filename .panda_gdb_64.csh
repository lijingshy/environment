#!/bin/csh

#this is for release
setenv LD_LIBRARY_PATH $EMPYREAN_HOME/openaccess/lib/linux_rhel40_gcc44x_64/opt:$EMPYREAN_HOME/tools/platform/linux26-x86_64/lib:$EMPYREAN_HOME/tools/aether/platform/linux26-x86_64/lib:$EMPYREAN_HOME/tools/aether/platform/linux26-x86_64/lib/intel:$EMPYREAN_HOME/tools/aether/platform/linux26-x86_64/oapluginlib:$LD_LIBRARY_PATH

#this is for debug
#setenv LD_LIBRARY_PATH $EMPYREAN_HOME/openaccess/lib/linux_rhel40_gcc44x_64/dbg:$EMPYREAN_HOME/tools/platform/linux26-x86_64/lib:$EMPYREAN_HOME/tools/aether/platform/linux26-x86_64/lib:$EMPYREAN_HOME/tools/aether/platform/linux26-x86_64/oapluginlib:$LD_LIBRARY_PATH

setenv OA_PLUGIN_PATH $EMPYREAN_HOME/tools/aether/data/oaplugins
