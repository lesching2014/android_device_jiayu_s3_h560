#!/bin/sh

command="git apply -v"
script=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
lineage="`echo $script | rev | cut -f5 -d'/' | rev`"
device="`echo $script | rev | cut -f4 -d'/' | rev`"
brand="`echo $script | rev | cut -f3 -d'/' | rev`"
model="`echo $script | rev | cut -f2 -d'/' | rev`"
patch="`echo $script | rev | cut -f1 -d'/' | rev`"
test="`echo ${PWD} | rev | cut -f1 -d'/' | rev`"
# ---------------------------------

if [[ "$test" == "patches_mtk" ]]; then
    cd ../../../..
fi

if [[ "$device" == "device" ]] && [[ "$patch" == "patches_mtk" ]]; then
    dirs="build bionic external/wpa_supplicant_8 frameworks/av frameworks/base frameworks/native frameworks/opt/telephony packages/apps/Snap packages/apps/Settings system/core system/sepolicy system/netd"
#packages/apps/FMRadio system/bt

    # red + nocolor
    RED='\033[0;31m'
    NC='\033[0m'

    echo -e "\n${RED}Checking ${NC}create vendor partition ${RED}patches...${NC}\n"
    $command $script/0001-vendor.patch

    for dir in $dirs ; do
        rootdirectory="$PWD"
        cd $dir
        echo -e "\n${RED}Checking ${NC}$dir ${RED}patches...${NC}\n"
        $command $script/$dir/*.patch
        cd $rootdirectory
    done
fi

# -----------------------------------
echo -e "Done !\n"
cd $script
