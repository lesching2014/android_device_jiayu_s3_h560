#!/bin/sh

case $1 in
    -c|--check)
      command="git apply -v --check"
      title="Checking"
      ;;
    -i|--install)
      command="git apply -v --whitespace=fix"
      title="Installing"
      ;;
    -u|--uninstall)
      command="git checkout -- ."
      command2="git clean -df"
      title="Uninstalling"
      ;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
    *)
      echo "Unknown option $1"
      exit 1
      ;;
esac

if [[ "$command" != "" ]]; then
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
        # red + nocolor
        RED='\033[0;31m'
        NC='\033[0m'

        while IFS= read -r line || [[ -n "$line" ]]; do
            if [[ ${line:0:1} != "#" ]]; then
                rootdirectory="$PWD"
                cd $line
                echo -e "\n${RED}$title ${NC}$line ${RED}patches...${NC}\n"
                if [[ "$tile" == "Uninstalling" ]]; then
                    $command && $command2
                else
                    $command $script/$line/*.patch
                fi
                cd $rootdirectory
            fi
        done < "$script/dirs-list.txt"
    fi

    # -----------------------------------
    echo -e "Done !\n"
    cd $script
fi
