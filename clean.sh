#!/bin/bash
for p in Dyno DAS
do 
    cd $p 
    conan remove "*" -s -b -f 
    cd ..
done
rm */{conaninfo.txt,conanbuildinfo.txt,conan.lock,graph_info.json}
rm *{,/test_package}/{SConscript_conan,CMakeUserPresets.json}
rm */{src,test_package}/.sconsign.dblite
rm -R *{,/test_package}/build
rm -R */coverage