#!/bin/bash
if [ $# = 0 ]; then
    ps="Dyno DAS"
else
    ps=$@
fi
for p in $ps
do
    cd $p
    case $p in
    Dyno)
        conan create -u -pr ../dyno . 
        ;;
    DAS)
        : 
        ;;
    esac
    cd ..
done