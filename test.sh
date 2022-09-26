#!/bin/bash
if [ $# = 0 ]; then
    ps="Dyno DAS"
else
    ps=$@
fi
for p in $ps
do
    cd $p
    conan create -pr ../dyno -o $p:test=True . 
    mkdir -p coverage
    gcovr test_package/build/*/ ~/.conan/data/$p/*/_/_/build/*/build -r src/ --html-details -o coverage/index.html -s
    cd ..
done