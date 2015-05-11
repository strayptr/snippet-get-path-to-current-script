#!/bin/bash

#==============================================================================
# Get the full path to this scriptfile, and also load our project's
# global constants.
#==============================================================================
scriptpath="`realpath \"$0\"`"
scriptname="`basename \"$scriptpath\"`"
scriptpath="`dirname \"$scriptpath\"`"

source "$scriptpath/config.sh"

#------------------------------------------------------------------------------
# Fail if any of our required vars are missing.
# See http://unix.stackexchange.com/questions/121379/test-if-multiple-variables-are-set
#------------------------------------------------------------------------------

# This script requires the following vars:
for var in                      \
  ProjectName                   \
  ProjectVersion                \
  ; do
  # see http://unix.stackexchange.com/questions/41292/variable-substitution-with-an-exclamation-mark-in-bash/41293#41293
  if [ -z "${!var}" ] ; then
      echo "\${$var} is required but isn't set.  Check that etc/config.sh is set up correctly."
      exit 1
  fi
done

#==============================================================================
# Perform some script-specific tasks.
#==============================================================================

# print out our name and version.
echo "$ProjectName v$ProjectVersion"

