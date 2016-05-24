#!/bin/sh

#set -e
#set -x

for package in $(npm -g outdated --parseable --depth=0 | egrep -v 'linked.*linked' | cut -d: -f4)
do
    echo "//----------------------------------------------------------------- --  -"
    echo "// $package"
    echo "//-------------------------------------------------------------- - -"
    echo
    npm -g install $package
    echo
done
