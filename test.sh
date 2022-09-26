#!/bin/bash
if [ $# = 0 ]; then
    ps="Dyno DAS"
else
    ps=$@
fi
for p in $ps
do
    cd $p
    conan create -pr ../dyno .
    mkdir -p coverage
    gcovr -r build/* --html-details -o coverage/index.html
    cd ..
done