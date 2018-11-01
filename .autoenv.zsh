#Warning: Always check your autoenv file before accepting it.
export BYOND_MAJOR=`echo $(awk -F "=" '/BYOND_MAJOR/ {print $2}' .travis.yml|tr -d '"')`
export BYOND_MINOR=`echo $(awk -F "=" '/BYOND_MINOR/ {print $2}' .travis.yml|tr -d '"')`

sh install-byond.sh&>/dev/null
source $HOME/BYOND-$BYOND_MAJOR.$BYOND_MINOR/byond/bin/byondsetup
