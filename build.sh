#!/bin/bash
if [ $# = 0 ]; then
    ps="Dyno DAS"
else
    ps=$@
fi
for p in $ps
do
    cd $p
    conan install -pr ../dyno . 
    conan build . 
    cd ..
done
