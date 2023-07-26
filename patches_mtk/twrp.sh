#!/bin/bash

script=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
lineage="`echo $script | rev | cut -f5 -d'/' | rev`"
device="`echo $script | rev | cut -f4 -d'/' | rev`"
brand="`echo $script | rev | cut -f3 -d'/' | rev`"
model="`echo $script | rev | cut -f2 -d'/' | rev`"
patch="`echo $script | rev | cut -f1 -d'/' | rev`"
test="`echo ${PWD} | rev | cut -f1 -d'/' | rev`"
# ---------------------------------

if [[ "$test" == "patches_mtk" ]]; then
    cd $script
    cd ../../../..
    if [ -f bootable/recovery-twrp/variables.h ]; then
        VERSION=$(grep "TW_MAIN_VERSION_STR" bootable/recovery-twrp/variables.h | head -1 | cut -d' ' -f3- | sed 's/"//g' | sed 's/ //g')
    fi
    cd $script
fi

if [[ "$VERSION" == "3.1.1" ]]; then
    cp -fr bootable/recovery-twrp/twrp-7.1/* bootable/recovery-twrp
elif [[ "$VERSION" == "3.2.3" ]]; then
    cp -fr bootable/recovery-twrp/twrp-8.1/* bootable/recovery-twrp
elif [[ "$VERSION" == "3.7.0_9" ]]; then
    cp -fr bootable/recovery-twrp/twrp-9.0/* bootable/recovery-twrp
elif [[ "$VERSION" == "3.5.2_10" ]]; then
    cp -fr bootable/recovery-twrp/twrp-10.0/* bootable/recovery-twrp
elif [[ "$VERSION" == "3.7.0_11" ]]; then
    cp -fr bootable/recovery-twrp/twrp-11/* bootable/recovery-twrp
elif [[ "$VERSION" == "3.7.0_12" ]]; then
    cp -fr bootable/recovery-twrp/twrp-12.1/* bootable/recovery-twrp
else
    echo "$VERSION"
fi
