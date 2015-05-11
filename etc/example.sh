#!/bin/bash

# include common functionality.
source "`dirname "$BASH_SOURCE"`"/common.sh

#==============================================================================
# Fail if any of our required vars are missing.
# See http://unix.stackexchange.com/questions/121379/test-if-multiple-variables-are-set
#==============================================================================
depends_on                        \
  ProjectName ProjectVersion


# This script requires the following vars:
# for var in                      \
#   ScriptPath ScriptName         \
#   ProjectName ProjectVersion    \
#   ; do
#   # see http://unix.stackexchange.com/questions/41292/variable-substitution-with-an-exclamation-mark-in-bash/41293#41293
#   if [ -z "${!var}" ] ; then
#       echoerr "\${$var} is required but isn't set.  Check that etc/config.sh is set up correctly."
#       exit 1
#   fi
# done

#==============================================================================
# Perform some script-specific tasks.
#==============================================================================

# print out our name and version.
echo "$ProjectName v$ProjectVersion"

